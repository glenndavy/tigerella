class Tigerella.Routers.DayListsRouter extends Backbone.Router
  initialize: (options) ->
    @dayLists = new Tigerella.Collections.DayListsCollection()
    @dayLists.reset options.dayLists

  routes:
    "/new"      : "newDayList"
    "/index"    : "index"
    "/:id/edit" : "edit"
    "/:id"      : "show"
    ".*"        : "index"

  newDayList: ->
    @view = new Tigerella.Views.DayLists.NewView(collection: @day_lists)
    $("#day_lists").html(@view.render().el)

  index: ->
    @view = new Tigerella.Views.DayLists.IndexView(day_lists: @day_lists)
    $("#day_lists").html(@view.render().el)

  show: (id) ->
    day_list = @day_lists.get(id)

    @view = new Tigerella.Views.DayLists.ShowView(model: day_list)
    $("#day_lists").html(@view.render().el)

  edit: (id) ->
    day_list = @day_lists.get(id)

    @view = new Tigerella.Views.DayLists.EditView(model: day_list)
    $("#day_lists").html(@view.render().el)
