package main

import (
	"fmt"
	"log"
	"os"
	"todo-app/handlers"
	"todo-app/services/database"

	"github.com/gin-gonic/gin"
	"github.com/joho/godotenv"

	_ "github.com/go-sql-driver/mysql"
)

//Server - houses the server elements
type Server struct {
	DB     *database.Database
	Router *gin.Engine
}

func main() {
	dialect := "mysql"
	dsn := "root:@tcp(localhost)/todo-app?parseTime=true"

	if err := godotenv.Load(); err != nil {
		log.Fatal(err)
	}

	user := os.Getenv("DB_USER")
	password := os.Getenv("DB_PASSWORD")
	host := os.Getenv("DB_HOST")
	dbase := os.Getenv("DB_DATABASE")

	if user != "" && password != "" && host != "" && dbase != "" {
		dsn = fmt.Sprintf("%s:%s@tcp(%s)/%s?parseTime=true", user, password, host, dbase)
	}
	db, err := setupDB(dialect, dsn)
	if err != nil {
		log.Fatal(err)
	}
	handlers.SetHandleDB(db)
	server := &Server{
		DB:     db,
		Router: gin.Default(),
	}

	r := server.Router
	todo := r.Group("/api")
	{
		todo.POST("/todo", handlers.CreateTodo)
		todo.GET("/todos", handlers.ShowAllTodos)
		todo.GET("/todo/:id", handlers.ShowSingleTodo)
		todo.PUT("/todo/:id", handlers.UpdateTodo)
		todo.DELETE("/todo/:id", handlers.DeleteTodo)

		todo.POST("/todo-item", handlers.CreateTodoItem)
		todo.GET("/todo-items/:todoID", handlers.ShowTodoItems)
		todo.GET("/todo-item/:id", handlers.ShowTodoItemDetail)
		todo.PUT("/todo-item/:id", handlers.UpdateTodoItem)
		todo.DELETE("/todo-item/:id", handlers.DeleteTodoItem)
	}

	server.Router.Run(":3000")
}

func setupDB(dialect, dsn string) (*database.Database, error) {
	return database.New(dialect, dsn)
}
