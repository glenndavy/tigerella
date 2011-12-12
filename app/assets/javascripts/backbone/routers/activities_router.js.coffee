class Tigerella.Routers.ActivitiesRouter extends Backbone.Router
  initialize: (options) ->
    @activities = new Tigerella.Collections.ActivitiesCollection()
    @activities.reset options.activities

  routes:
    "/new"      : "newActivity"
    "/index"    : "index"
    "/:id/edit" : "edit"
    "/:id"      : "show"
    ".*"        : "index"

  newActivity: ->
    @view = new Tigerella.Views.Activities.NewView(collection: @activities)
    $("#activities").html(@view.render().el)

  index: ->
    @view = new Tigerella.Views.Activities.IndexView(activities: @activities)
    $("#activities").html(@view.render().el)

  show: (id) ->
    activity = @activities.get(id)

    @view = new Tigerella.Views.Activities.ShowView(model: activity)
    $("#activities").html(@view.render().el)

  edit: (id) ->
    activity = @activities.get(id)

    @view = new Tigerella.Views.Activities.EditView(model: activity)
    $("#activities").html(@view.render().el)
