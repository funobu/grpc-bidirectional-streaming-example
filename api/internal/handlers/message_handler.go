package handlers

import (
	grpc "github.com/funobu/sample_app/grpc"
	"github.com/funobu/sample_app/internal/services"
	"github.com/google/uuid"
	"golang.org/x/sync/errgroup"
	"google.golang.org/grpc/codes"
	"google.golang.org/grpc/status"
	"log"
)

type MessageHandler struct {
	aiService *services.AiService
}

func NewMessageHandler(aiService *services.AiService) *MessageHandler {
	return &MessageHandler{aiService: aiService}
}

func (m MessageHandler) RealtimeConversation(server grpc.MessageService_RealtimeConversationServer) error {
	ctx := server.Context()

	for {
		req, err := server.Recv()
		if err != nil {
			return status.Error(codes.Internal, err.Error())
		}

		var eg errgroup.Group
		var resultStream chan string = make(chan string)
		messageID := uuid.New().String()
		eg.Go(func() error {
			if err := m.aiService.GetResponse(ctx, &services.GetResponseRequest{
				Message:      req.Message,
				ResultStream: resultStream,
			}); err != nil {
				return err
			}
			return nil
		})

		eg.Go(func() error {
			for messageChar := range resultStream {
				if err := server.Send(&grpc.RealtimeConversationResponse{
					MessageId:   messageID,
					MessageChar: messageChar,
					IsDone:      false,
				}); err != nil {
					return err
				}
				log.Println(messageChar)
			}

			return server.Send(&grpc.RealtimeConversationResponse{
				MessageId:   messageID,
				MessageChar: "",
				IsDone:      true,
			})
		})

		if err = eg.Wait(); err != nil {
			return status.Error(codes.Internal, err.Error())
		}
	}
}
