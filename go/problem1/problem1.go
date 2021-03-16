package main

import "fmt"

func main() {
	limit := 1000
	sum := 0

	for valueToTest := 1; valueToTest < limit; valueToTest++ {
		if valueToTest % 3 == 0 || valueToTest % 5 == 0 {
			sum += valueToTest
		}
	}

	fmt.Println(sum)
}
