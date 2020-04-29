package handlers

import (
	"strconv"
	"todo-app/services/database"

	"github.com/gin-gonic/gin"
)

type todoItemReq struct {
	TodoID      uint   `json:"todo_id" form:"todo_id" binding:"required"`
	Description string `json:"description" form:"description" binding:"required"`
	Completed   bool   `json:"completed"`
}

// ShowTodoItems show todo items for a todo
func ShowTodoItems(c *gin.Context) {
	todoID, err := strconv.Atoi(c.Param("todoID"))
	if err != nil {
		response(c, 400, "Invalid Todo provided", nil)
		return
	}
	response(c, 200, "Todo Items ", db.GetAllTodoItems(uint(todoID)))
}

// ShowTodoItemDetail - show todo item details
func ShowTodoItemDetail(c *gin.Context) {
	id, err := strconv.Atoi(c.Param("id"))
	if err != nil {
		response(c, 400, "Invalid Todo provided", nil)
		return
	}

	todoItem := db.GetSingleTodoItem(uint(id))
	if todoItem.ID == 0 {
		response(c, 404, "Invalid TodoItem ID", nil)
		return
	}
	response(c, 200, "Todo Item information loaded.", todoItem)
}

// UpdateTodoItem - update todo item
func UpdateTodoItem(c *gin.Context) {
	var req todoItemReq
	if err := c.ShouldBindJSON(&req); err != nil {
		response(c, 400, err.Error(), nil)
		return
	}
	id, err := strconv.Atoi(c.Param("id"))
	if err != nil {
		response(c, 400, "Invalid Todo provided", nil)
		return
	}
	t := database.TodoItem{
		TodoID:      req.TodoID,
		Description: req.Description,
		Completed:   req.Completed,
	}

	if checkTodo := db.GetSingleTodo(req.TodoID); checkTodo.ID <= 0 {
		response(c, 400, "Invalid Todo ID Provided", nil)
		return
	}

	db.UpdateTodoItem(uint(id), t)
	response(c, 200, "Todo Item updated successfully", t)
}

//CreateTodoItem - create todo item
func CreateTodoItem(c *gin.Context) {
	var req todoItemReq
	if err := c.ShouldBindJSON(&req); err != nil {
		response(c, 400, err.Error(), nil)
		return
	}

	t := database.TodoItem{
		TodoID:      req.TodoID,
		Description: req.Description,
		Completed:   req.Completed,
	}

	db.CreateTodoItem(&t)
	response(c, 200, "Todo Item Created successfully.", t)
}

//DeleteTodoItem remove TodoItem
func DeleteTodoItem(c *gin.Context) {

}
