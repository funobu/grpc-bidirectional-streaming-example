init:
	cd backend
	./bin/install.sh

gen:
	cd api && ./bin/api_gen.sh
	cd ./frontend && ./scripts/gen_grpc.sh

run:
	cd api && PORT=8080 OPENAI_API_KEY=ここにOPENAI_API_KEYを貼る go run cmd/main.go