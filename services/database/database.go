package database

import "github.com/jinzhu/gorm"

//Database - House the database implementation
type Database struct {
	db *gorm.DB
}

//New - Return a new database connection
func New(dialect, dsn string) (*Database, error) {
	db, err := gorm.Open(dialect, dsn)
	if err != nil {
		return nil, err
	}

	db.AutoMigrate(&Todo{}, &TodoItem{})

	return &Database{
		db: db,
	}, nil
}
