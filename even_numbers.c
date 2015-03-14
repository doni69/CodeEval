#include <stdio.h>
int main(int argc, const char * argv[]) {
	FILE *file = fopen(argv[1], "r");
	char line[1024];
	while (fgets(line, 1024, file)) {
		printf("%d\n",1-atoi(line)%2);
	}
	return 0;
}
