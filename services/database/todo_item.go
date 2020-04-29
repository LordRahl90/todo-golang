package database

import "github.com/jinzhu/gorm"

//TodoItem - model to house the TodoItem details
type TodoItem struct {
	gorm.Model
	Todo        Todo   `gorm:"foreignkey:TodoID"`
	TodoID      uint   `json:"todo_id"`
	Description string `json:"description"`
	Completed   bool   `json:"completed"`
}

//CreateTodoItem - create a todo record
func (d *Database) CreateTodoItem(t *TodoItem) {
	d.db.FirstOrCreate(&t, TodoItem{TodoID: t.TodoID, Description: t.Description})
}

// GetAllTodoItems - retrieve all todo records
func (d *Database) GetAllTodoItems(t uint) []TodoItem {
	var items []TodoItem
	d.db.Find(&items, "todo_id=?", t)
	return items
}

// GetSingleTodoItem - find single Todo in the database
func (d *Database) GetSingleTodoItem(id uint) TodoItem {
	var t TodoItem
	d.db.First(&t, id)
	return t
}

//UpdateTodoItem - update a todo record.
func (d *Database) UpdateTodoItem(id uint, t TodoItem) {
	d.db.Model(&t).Where("id=?", id).Update(t)
}
