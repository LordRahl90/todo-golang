package handlers

import (
	"todo-app/services/database"

	"github.com/gin-gonic/gin"
)

// Database reference to the database object/connection
var db *database.Database

//SetHandleDB - use this to set the database connection to use.
func SetHandleDB(d *database.Database) {
	db = d
}

func response(c *gin.Context, code int, message string, data interface{}) {
	c.JSON(code, gin.H{
		"message": message,
		"data":    data,
	})
	return
}
