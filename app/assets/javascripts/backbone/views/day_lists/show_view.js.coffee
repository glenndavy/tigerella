Tigerella.Views.DayLists ||= {}

class Tigerella.Views.DayLists.ShowView extends Backbone.View
  template: JST["backbone/templates/day_lists/show"]

  render: ->
    $(@el).html(@template(@model.toJSON() ))
    return this
