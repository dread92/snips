package main

import "fmt"

func sum(nums ...int) {
	fmt.Print(nums, " ")
	total := 0
	for _, num := range nums {
		total += num
	}
	fmt.Println(total)
}

func printr(strings ...string) {
	for _, string := range strings {
		fmt.Println(string)
	}
}

func main() {

	sum(1,2)
	sum(1,2,3)

	nums := []int{1,2,3,4}
	sum(nums...)

	// I added printr and played with it here
	// Note that println takes variadic interface{} so this is completely unnecessary. Unless you want it to have
	// newlines from the loop.
	strings :=[]string{"this", "is","my", "slice","of", "strings"}

	fmt.Println(strings)
	printr(strings...)
}
