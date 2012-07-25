class Todolist.Views.TodoItemsIndex extends Backbone.View

  template: JST['todo_items/index']

  render: ->
    this.$el.html @template()
    $("#container").html this.$el
    @list = $("#list")
    @collection.each @renderOne, this
    this

  renderOne: (item)->
    v = new Todolist.Views.TodoItemsSingle({model: item})
    @list.append v.render().el
