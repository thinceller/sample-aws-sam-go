.PHONY: clean build test run dev

clean:
	rm -rf ./hello-world/hello-world

build: clean
	GOOS=linux GOARCH=amd64 go build -o hello-world/hello-world ./hello-world

test:
	go test -v ./hello-world

run:
	sam local invoke

dev: build run;
