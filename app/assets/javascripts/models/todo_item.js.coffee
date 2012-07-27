class Todolist.Models.TodoItem extends Backbone.Model

  toggleComplete: ->
    complete = !@get('complete')
    @set({complete: complete})
    @save()
