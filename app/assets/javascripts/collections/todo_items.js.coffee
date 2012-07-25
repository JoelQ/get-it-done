class Todolist.Collections.TodoItems extends Backbone.Collection

  model: Todolist.Models.TodoItem
  url: '/api/todo_items'
