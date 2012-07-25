class Todolist.Views.TodoItemsSingle extends Backbone.View
  template: JST['todo_items/single']
  tagName: 'li'

  render: ->
    this.$el.html @template(@model.toJSON())
    this