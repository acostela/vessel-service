build:
	build:
	protoc -I proto/vessel/ proto/vessel/vessel.proto --go_out=plugins=micro:proto/vessel
	GOOS=linux GOARCH=amd64
	docker build -t vessel-service .
run:
	docker run -p 50052:50051 -e MICRO_SERVER_ADDRESS=:50051 -e MICRO_REGISTRY=mdns vessel-service