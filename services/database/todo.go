package database

import "github.com/jinzhu/gorm"

//Todo - houses the todo model
type Todo struct {
	gorm.Model
	Title       string     `json:"title"`
	Description string     `json:"description"`
	Items       []TodoItem `json:"todo_items,omitempty" gorm:"foreignkey:TodoID"`
}

//CreateTodo - create a todo record
func (d *Database) CreateTodo(todo *Todo) {
	d.db.FirstOrCreate(&todo, Todo{Title: todo.Title})
}

// GetAllTodos - retrieve all todo records
func (d *Database) GetAllTodos() []Todo {
	var todos []Todo
	d.db.Find(&todos)
	return todos
}

// GetSingleTodo - find single Todo in the database
func (d *Database) GetSingleTodo(id uint) Todo {
	var t Todo
	d.db.First(&t, id)
	return t
}

//UpdateTodo - update a todo record.
func (d *Database) UpdateTodo(id uint, t *Todo) {
	d.db.Model(&t).Where("id=?", id).Update(t)
}
