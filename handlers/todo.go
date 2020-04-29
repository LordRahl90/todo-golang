package handlers

import (
	"strconv"
	"todo-app/services/database"

	"github.com/gin-gonic/gin"
)

type todoRequest struct {
	Title       string `json:"title" form:"title" binding:"required"`
	Description string `json:"description" form:"description"`
}

//ShowSingleTodo - Show one todo Items
func ShowSingleTodo(c *gin.Context) {
	id, err := strconv.Atoi(c.Param("id"))
	if err != nil {
		response(c, 400, err.Error(), nil)
		return
	}
	response(c, 200, "Load single todo", db.GetSingleTodo(uint(id)))
}

//ShowAllTodos - list all Todo Lists
func ShowAllTodos(c *gin.Context) {
	response(c, 200, "All todos loaded", db.GetAllTodos())
}

//CreateTodo - create a todo List
func CreateTodo(c *gin.Context) {
	var req todoRequest
	if err := c.ShouldBindJSON(&req); err != nil {
		response(c, 400, err.Error(), nil)
		return
	}
	todo := &database.Todo{
		Title:       req.Title,
		Description: req.Description,
	}
	db.CreateTodo(todo)
	response(c, 200, "Todo created successfully", todo)
}

//UpdateTodo - update a todo list.
func UpdateTodo(c *gin.Context) {
	var req todoRequest
	if err := c.ShouldBindJSON(&req); err != nil {
		response(c, 400, err.Error(), nil)
		return
	}

	id, err := strconv.Atoi(c.Param("id"))
	if err != nil {
		response(c, 400, err.Error(), nil)
		return
	}

	t := &database.Todo{
		Title:       req.Title,
		Description: req.Description,
	}
	db.UpdateTodo(uint(id), t)

	response(c, 200, "Update successful", t)
}

//DeleteTodo - remove a todolist
func DeleteTodo(c *gin.Context) {

}
