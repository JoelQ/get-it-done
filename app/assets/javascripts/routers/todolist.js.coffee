class Todolist.Routers.TodoList extends Backbone.Router
  routes:
    'todo_items': 'index'

  index: ->
    @indexView = new Todolist.Views.TodoItemsIndex
    $("#container").html @indexView.render().el
