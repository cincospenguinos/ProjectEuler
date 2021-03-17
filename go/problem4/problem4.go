package main

import (
	"fmt"
	"strconv"
	"strings"
)

func main() {
	largestPalindrome := 0

	for i := 100; i <= 999; i++ {
		for j := 100; j <= 999; j++ {
			product := i * j
			prodString := strconv.Itoa(product)

			if isPalindrome(prodString)  && largestPalindrome < product {
				largestPalindrome = product
			}
		}
	}

	fmt.Println(largestPalindrome)
}

func isPalindrome(str string) bool {
	splitString := strings.Split(str, "")

	for idx, _ := range splitString {
		correspondingIdx := len(splitString) - (idx + 1)

		if splitString[idx] != splitString[correspondingIdx] {
			return false
		}
	}

	return true
}
