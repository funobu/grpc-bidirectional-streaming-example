package main

import (
	"context"
	"fmt"
	"github.com/funobu/sample_app/config"
	"log"
	"net"
	"os"
	"os/signal"
)

func main() {
	ctx := context.Background()
	// Load config
	cnf := config.NewConfig()

	// Initialize network
	listener, err := net.Listen("tcp", fmt.Sprintf(":%s", cnf.Server.Port))
	if err != nil {
		log.Fatalf("failed to listen: %v", err)
	}

	s, err := BuildApp(ctx, cnf)
	if err != nil {
		log.Fatalf("failed to build app: %v", err)
	}

	go func() {
		s.Serve(listener)
	}()

	quit := make(chan os.Signal, 1)
	signal.Notify(quit, os.Interrupt)
	<-quit
	s.GracefulStop()
}
