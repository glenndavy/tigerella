Tigerella.Views.Activities ||= {}

class Tigerella.Views.Activities.IndexView extends Backbone.View
  template: JST["backbone/templates/activities/index"]

  initialize: () ->
    @options.activities.bind('reset', @addAll)

  addAll: () =>
    @options.activities.each(@addOne)

  addOne: (activity) =>
    view = new Tigerella.Views.Activities.ActivityView({model : activity})
    @$("tbody").append(view.render().el)

  render: =>
    $(@el).html(@template(activities: @options.activities.toJSON() ))
    @addAll()

    return this
