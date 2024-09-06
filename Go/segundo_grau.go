package main

import (
	"fmt"
	"math"
)

func main() {
	var a = 0
	var b = 0
	var c = 0

	fmt.Scan(&a)

	fmt.Scan(&b)

	fmt.Scan(&c)

	var delta = b*b - (4 * a * c)

	x := float64(delta)

	raiz := math.Sqrt(x)

	var bas1 = (-float64(b) + raiz) / float64(2*a)
	var bas2 = (-float64(b) - raiz) / float64(2*a)

	fmt.Println(bas1)

	fmt.Println(bas2)
}
