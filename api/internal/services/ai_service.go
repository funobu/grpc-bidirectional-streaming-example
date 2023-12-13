package services

import (
	"context"
	"errors"
	"fmt"
	"github.com/sashabaranov/go-openai"
	"io"
)

var messages = []openai.ChatCompletionMessage{}

type AiService struct {
	client *openai.Client
}

func NewAiService(apiKey string) *AiService {
	client := openai.NewClient(apiKey)
	return &AiService{client: client}
}

func getConversationSystemPrompt(characterName string) string {
	return fmt.Sprintf(`
Your name is %s.
You are female and your age is 18 years old.
Note that you are set up as Japanese, so please reply in Japanese.
You should also be cheerful and always reply in a "タメ口", without using honorific or polite language.
Also, if you don't understand something, clearly state that you don't understand it.
Also, be sure to ask at least three questions in response to the first answer, and be sure to respond to each one in 150 characters or less.
`, characterName)
}

type GetResponseRequest struct {
	CharacterName string
	Message       string
	ResultStream  chan<- string
}

func (aiService *AiService) GetResponse(ctx context.Context, input *GetResponseRequest) error {
	openaiConversations := make([]openai.ChatCompletionMessage, len(messages)+2)
	openaiConversations[0] = openai.ChatCompletionMessage{
		Role:    openai.ChatMessageRoleSystem,
		Content: getConversationSystemPrompt(input.CharacterName),
	}

	openaiConversations[len(messages)+1] = openai.ChatCompletionMessage{
		Role:    openai.ChatMessageRoleUser,
		Content: input.Message,
	}

	stream, err := aiService.client.CreateChatCompletionStream(ctx, openai.ChatCompletionRequest{
		Model:       openai.GPT3Dot5Turbo1106,
		Messages:    openaiConversations,
		Temperature: 0,
	})

	if err != nil {
		return err
	}

	defer stream.Close()

	for {
		res, err := stream.Recv()
		if errors.Is(err, io.EOF) {
			close(input.ResultStream)
			return nil
		}
		if err != nil {
			return err
		}

		input.ResultStream <- res.Choices[0].Delta.Content
	}
}
