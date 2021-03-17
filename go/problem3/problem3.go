package main

import (
	"fmt"
	"math"
)

func main() {
	number := 600851475143
	largestPrimeFactor := 0

	for toTest := 2; toTest < number; toTest += 1 {
		isFactor := number % toTest == 0

		if isFactor && isPrime(toTest) {
			fmt.Println(toTest, "is largest factor")
			largestPrimeFactor = toTest

			if number / largestPrimeFactor < largestPrimeFactor {
				fmt.Println(largestPrimeFactor)
				return
			}
		}
	}

	fmt.Println(largestPrimeFactor)
}

func isPrime(number int) bool {
	limit := int(math.Sqrt(float64(number))) + 1

	for toTest := 2; toTest < limit; toTest++ {
		if number % toTest == 0 {
			return false
		}
	}

	return true
}