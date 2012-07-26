class Todolist.Routers.TodoList extends Backbone.Router
  routes:
    'todo_items': 'index'

  index: ->
    indexView = new Todolist.Views.TodoItemsIndex(collection: Todolist.todos)
    indexView.render()
