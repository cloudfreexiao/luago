.PHONY: run build clean

all: luac_win run

build:
	go build luago.go

run:
	go run luago.go

luac_win:
	./lua/bin/luac53.exe lua/test.lua

luac_macosx:
	./lua/bin/luac lua/test.lua

clean:
	rm -rf luac.out
	go clean
