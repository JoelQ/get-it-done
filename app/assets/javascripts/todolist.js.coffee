window.Todolist =
  Models: {}
  Collections: {}
  Views: {}
  Routers: {}
  init: ->
    router = new Todolist.Routers.TodoList
    Backbone.history.start(pushState: true)

$(document).ready ->
  Todolist.init()
