Tigerella.Views.DayLists ||= {}

class Tigerella.Views.DayLists.EditView extends Backbone.View
  template : JST["backbone/templates/day_lists/edit"]

  events :
    "submit #edit-day_list" : "update"

  update : (e) ->
    e.preventDefault()
    e.stopPropagation()

    @model.save(null,
      success : (day_list) =>
        @model = day_list
        window.location.hash = "/#{@model.id}"
    )

  render : ->
    $(@el).html(@template(@model.toJSON() ))

    this.$("form").backboneLink(@model)

    return this
