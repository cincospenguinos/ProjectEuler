#include <stdio.h>

#define UPPER_LIMIT 1000

int main() {
	int sum = 0;

	for (int i = 0; i < UPPER_LIMIT; i++) {
		if (i % 3 == 0 || i % 5 == 0) {
			sum += i;
		}
	}

	printf("%d\n", sum);

	return 0;
}
