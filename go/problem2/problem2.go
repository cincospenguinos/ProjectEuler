package main

import "fmt"

func main() {
	fiboSlices := make([]int, 0)

	a := 1

	for b := 1; a < 4000000; {
		fiboSlices = append(fiboSlices, a)

		c := a + b
		a = b
		b = c
	}

	fiboSlices = filter(fiboSlices, func (v int) bool {
		return v % 2 == 0
	})

	sum := 0
	for _, value := range fiboSlices {
		sum += value
	}

	fmt.Println(sum)
}

func filter(list []int, criteria func (element int) bool) []int {
	filteredSlice := make([]int, 0)

	for _, value := range list {
		if (criteria(value)) {
			filteredSlice = append(filteredSlice, value)
		}
	}

	return filteredSlice
}
