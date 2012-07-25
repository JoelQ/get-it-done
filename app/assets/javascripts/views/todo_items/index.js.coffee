class Todolist.Views.TodoItemsIndex extends Backbone.View

  template: JST['todo_items/index']

  render: ->
    this.$el.html @template()
    this
