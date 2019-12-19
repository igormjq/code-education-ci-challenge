package main

import "fmt"

func sum(x int, y int) int {
	return x + y;
}

func main() {
	fmt.Println("O resultado da soma é...");
	fmt.Println(sum(5,5));
}