Tigerella.Views.Activities ||= {}

class Tigerella.Views.Activities.NewView extends Backbone.View
  template: JST["backbone/templates/activities/new"]

  events:
    "submit #new-activity": "save"

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
      success: (activity) =>
        @model = activity
        window.location.hash = "/#{@model.id}"

      error: (activity, jqXHR) =>
        @model.set({errors: $.parseJSON(jqXHR.responseText)})
    )

  render: ->
    $(@el).html(@template(@model.toJSON() ))

    this.$("form").backboneLink(@model)

    return this
