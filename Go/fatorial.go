package main

import (
	"fmt"
	"math/rand"
)

func main() {
	n := rand.Intn(10)
	fat := 1
	
	for i := 0; i < n; i++ {
		a := n-i
		fmt.Println(a)

		fat = fat*a 
	} 

	fmt.Println(fat)
}
