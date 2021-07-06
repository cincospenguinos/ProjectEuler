#include <stdio.h>

#define FIBO_LIMIT 4000000

int main() {
	int fibo1 = 1;
	int fibo2 = 1;
	int sum = 0;

	while (fibo2 < FIBO_LIMIT) {
		if (fibo2 % 2 == 0) {
			sum += fibo2;
		}

		int tmp = fibo2;
		fibo2 = fibo1 + fibo2;
		fibo1 = tmp;
	}

	printf("%d\n", sum);
}