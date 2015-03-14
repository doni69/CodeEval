#include <stdio.h>
int main(int argc, const char * argv[]) {
	FILE *file = fopen(argv[1], "r");
	char line[1024];
	while (fgets(line, 1024, file)) {
		int n=atoi(line);
		int sum=0;
		while (n) {
			if (n%2) {
				n--;
				sum++;
			}
			else {n/=2;}
		}
		printf("%d\n",sum);
	}
	return 0;
}
