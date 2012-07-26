class Todolist.Views.TodoItemsSingle extends Backbone.View
  template: JST['todo_items/single']
  tagName: 'li'

  initialize: ->
    @model.on('change', @render, this)
    @model.on('delete', @remove, this)

  render: ->
    this.$el.html @template(@model.toJSON())
    this