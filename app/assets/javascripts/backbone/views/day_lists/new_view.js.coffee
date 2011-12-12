Tigerella.Views.DayLists ||= {}

class Tigerella.Views.DayLists.NewView extends Backbone.View
  template: JST["backbone/templates/day_lists/new"]

  events:
    "submit #new-day_list": "save"

  constructor: (options) ->
    super(options)
    @model = new @collection.model()

    @model.bind("change:errors", () =>
      this.render()
    )

  save: (e) ->
    e.preventDefault()
    e.stopPropagation()

    @model.unset("errors")

    @collection.create(@model.toJSON(),
      success: (day_list) =>
        @model = day_list
        window.location.hash = "/#{@model.id}"

      error: (day_list, jqXHR) =>
        @model.set({errors: $.parseJSON(jqXHR.responseText)})
    )

  render: ->
    $(@el).html(@template(@model.toJSON() ))

    this.$("form").backboneLink(@model)

    return this
