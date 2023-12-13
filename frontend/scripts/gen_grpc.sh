#!/usr/bin/env bash

protoc --dart_out=grpc:./lib/generated \
    -I ../schema \
    ../schema/*.proto