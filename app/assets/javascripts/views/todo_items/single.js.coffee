class Todolist.Views.TodoItemsSingle extends Backbone.View
  template: JST['todo_items/single']
  editTemplate: JST['todo_items/single_edit']
  tagName: 'li'

  events:
    'click input[type=checkbox]': 'toggleCheck'
    'dblclick .item-name': 'edit'
    'click .edit': 'save'
    'click .destroy': 'destroy'

  initialize: ->
    @model.on('change', @render, this)
    @model.on('destroy', @remove, this)

  render: ->
    c = (if @model.get "complete" then 'complete' else 'incomplete')
    this.$el.addClass(c)
    this.$el.html @template(@model.toJSON())
    this

  toggleCheck: ->
    this.$el.toggleClass("complete incomplete")
    @model.toggleComplete()

  edit: ->
    this.$(".item-name").html @editTemplate(@model.toJSON())

  save: ->
    name = this.$("input[type=text]").val()
    @model.set({name: name})
    @model.save()

  destroy: (e)->
    e.preventDefault()
    @model.destroy()