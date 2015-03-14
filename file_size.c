#include <stdio.h>
int main(int argc, const char * argv[]) {
	FILE *file = fopen(argv[1], "r");
	fseek(file,0L,SEEK_END);
	printf("%d", ftell(file));
	return 0;
}
