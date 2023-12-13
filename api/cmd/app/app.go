package app

import (
	"github.com/funobu/sample_app/config"
	pb "github.com/funobu/sample_app/grpc"
	"github.com/funobu/sample_app/internal/handlers"
	"github.com/funobu/sample_app/internal/services"
	"google.golang.org/grpc"
	"google.golang.org/grpc/reflection"
)

func BuildApp(cnf *config.Config) (*grpc.Server, error) {
	// Initialize services
	aiService := services.NewAiService(cnf.OpenAI.APIKey)

	// Initialize handlers
	messageHandler := handlers.NewMessageHandler(aiService)

	// Initialize gRPC server
	s := grpc.NewServer()
	pb.RegisterMessageServiceServer(s, messageHandler)
	reflection.Register(s)

	return s, nil
}
