#include <stdio.h>
#include <stdlib.h>

int main(int argc, char** argv){

	int counter = 0;

	if (argc == 1) {
        printf("usage: %s <positive integer> \n",argv[0]);
		return 1;
	}
	else {
		counter = atoi(argv[1]);
	}

	while (counter > 0) {
		printf("hello world\n");
		counter--;
	}

	return 0;
}
