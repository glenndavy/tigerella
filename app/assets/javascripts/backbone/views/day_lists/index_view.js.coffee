Tigerella.Views.DayLists ||= {}

class Tigerella.Views.DayLists.IndexView extends Backbone.View
  template: JST["backbone/templates/day_lists/index"]

  initialize: () ->
    @options.dayLists.bind('reset', @addAll)

  addAll: () =>
    @options.dayLists.each(@addOne)

  addOne: (dayList) =>
    view = new Tigerella.Views.DayLists.DayListView({model : dayList})
    @$("tbody").append(view.render().el)

  render: =>
    $(@el).html(@template(dayLists: @options.dayLists.toJSON() ))
    @addAll()

    return this
