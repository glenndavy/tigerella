Tigerella.Views.DayLists ||= {}

class Tigerella.Views.DayLists.DayListView extends Backbone.View
  template: JST["backbone/templates/day_lists/day_list"]

  events:
    "click .destroy" : "destroy"

  tagName: "tr"

  destroy: () ->
    @model.destroy()
    this.remove()

    return false

  render: ->
    $(@el).html(@template(@model.toJSON() ))
    return this
