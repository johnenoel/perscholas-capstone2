package main

import (
        "fmt"
        "net/http"
)

func homePage(w http.ResponseWriter, r *http.Request) {
        fmt.Fprintf(w, "Welcome to Per Scholas Cloud DevOps Program\n")
        fmt.Fprint(w, "Congratulations my friend\nYou are now a DevOps Engineer!!!")
}

func setupRoutes() {
        http.HandleFunc("/", homePage)
}

func main() {
        fmt.Println("Go Web App Started on Port 4000")
        setupRoutes()
        http.ListenAndServe(":4000", nil)
}

