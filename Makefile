all:
	nasm -felf64 hello.asm
	ld -s -o hello hello.o

clean:
	rm -rf ./hello.o ./hello
