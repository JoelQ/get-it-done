class Todolist.Views.TodoItemsSingle extends Backbone.View
  template: JST['todo_items/single']
  tagName: 'li'

  events:
    'click input[type=checkbox]': 'toggleCheck'
    'dblclick .item-name': 'edit'
    'click .edit': 'save'

  initialize: ->
    @model.on('change', @render, this)
    @model.on('delete', @remove, this)

  render: ->
    c = (if @model.get "complete" then 'complete' else 'incomplete')
    this.$el.addClass(c)
    this.$el.html @template(@model.toJSON())
    this

  toggleCheck: ->
    this.$el.toggleClass("complete incomplete")
    @model.toggleComplete()

  edit: ->
    this.$(".item-name").html("<input type='text' value='#{@model.get('name')}'/><button class='edit'>Save</button>")

  save: ->
    name = this.$("input[type=text]").val()
    @model.set({name: name})
    @model.save()