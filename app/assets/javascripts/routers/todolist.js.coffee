class Todolist.Routers.TodoList extends Backbone.Router
  routes:
    'todo_items': 'index'

  index: ->
    todos = new Todolist.Collections.TodoItems
    todos.reset([{name: "test1", complete: false}, {name: 'test2', complete: false}])
    # todos.fetch()
    indexView = new Todolist.Views.TodoItemsIndex(collection: todos)
    indexView.render()
