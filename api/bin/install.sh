#!/usr/bin/env bash

go install google.golang.org/protobuf/cmd/protoc-gen-go@latest
go install google.golang.org/grpc/cmd/protoc-gen-go-grpc@latest
go install github.com/pseudomuto/protoc-gen-doc/cmd/protoc-gen-doc@latest