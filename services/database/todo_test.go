package database

import (
	"fmt"
	"log"
	"os"
	"testing"

	"github.com/stretchr/testify/assert"

	_ "github.com/go-sql-driver/mysql"
)

var db *Database

func TestMain(m *testing.M) {
	var d, err = New("mysql", "root:@tcp(localhost:3306)/todo-app?parseTime=true")
	if err != nil {
		log.Fatal(err)
	}
	db = d

	defer func() {
		fmt.Printf("all done")
	}()
	os.Exit(m.Run())
}

func TestCreateTodo(t *testing.T) {
	todo := Todo{
		Title:       "Demo",
		Description: "Demo description",
		Items:       nil,
	}

	db.CreateTodo(&todo)
	assert.NotNil(t, todo)
	assert.Equal(t, uint(1), todo.ID)

	defer cleanup("todos")
}

func cleanup(table string) {
	db.db.Table(table).Exec("TRUNCATE table " + table)
}
