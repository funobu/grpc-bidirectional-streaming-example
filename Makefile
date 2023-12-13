init:
	cd backend
	./bin/install.sh

gen:
	cd api && ./bin/api_gen.sh
	cd ./frontend && ./scripts/gen_grpc.sh