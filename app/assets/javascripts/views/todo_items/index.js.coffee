class Todolist.Views.TodoItemsIndex extends Backbone.View

  template: JST['todo_items/index']

  events:
    'click button': "add"

  initialize: ->
    @collection.on("reset add", @render, this)

  render: ->
    this.$el.html @template()
    $("#container").html this.$el
    @list = $("#list")
    @collection.each @renderOne, this
    this

  renderOne: (item)->
    v = new Todolist.Views.TodoItemsSingle({model: item})
    @list.append v.render().el

  add: (e)=>
    e.preventDefault()
    taskName = $(e.target).siblings("input").val()
    @collection.add
      name: taskName
      complete: false
