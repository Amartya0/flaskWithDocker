package main

import (
	"fmt"
	"sync"
)

var wg sync.WaitGroup

func test () {
	fmt.Println("Hello, World!!! 2")
	wg.Done()
}

func main() {
	wg.Add(1)
    fmt.Println("Hello, World!!!")
	go test()
	wg.Wait()
}