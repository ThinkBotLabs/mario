package main

import (
	"log"
	"net/http"
)

func main() {
	staticDir := "."
	fs := http.FileServer(http.Dir(staticDir))
	http.Handle("/", fs)

	log.Println("Server started on http://localhost:8080")
	log.Fatal(http.ListenAndServe(":8080", nil))
}
