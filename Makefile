tidyvendor:
	go mod tidy
	go mod vendor

update:
	go get -u -v ./...

updatetidy: update tidyvendor

test:
	go test -coverprofile=cover.out ./...
	go tool cover -html cover.out -o cover.html
	rm cover.out
