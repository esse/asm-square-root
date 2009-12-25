#include <stdio.h>
	extern float _sqrt(float a); /* external function declaration */

	float sqrt(float a);

	float a;
		int main()
	{
		printf("Podaj liczbe z ktorej chcesz obliczyc pierwiastek >>> ");
		if ((scanf("%f", &a) != 1) || a < 0.0)
		{
			printf("Podano zla wartosc");
			return 0;
		}
		if (a == 0.0)
		{
			printf("Pierwiastek z %f, wynosi: %f\n", 0.0, 0.0);
			return 0;
		}
		printf("Pierwiastek z %f, wynosi: %f\n", a, sqrt(a));
		return 0;
	}