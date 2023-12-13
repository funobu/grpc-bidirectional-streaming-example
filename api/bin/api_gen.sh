#!/usr/bin/env bash

protoc --go_out=../api/generated --go_opt=paths=source_relative \
       --go-grpc_out=../api/generated --go-grpc_opt=paths=source_relative \
       --go-grpc_opt require_unimplemented_servers=false \
       --proto_path=../schema ../schema/*.proto

protoc --doc_out=../docs --doc_opt=markdown,api.md \
       --proto_path=../schema ../schema/*.proto