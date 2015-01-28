all : test
	
test : morse array
	./morse < fox.txt
	./array
	
morse : morse.c
	gcc -std=c99 morse.c -o morse
	
array: array.c
	gcc -std=c99 array.c -o array
	
clean:
	rm -f morse
