class Tigerella.Models.DayList extends Backbone.Model
  paramRoot: 'day_list'

  defaults:
    date: null

class Tigerella.Collections.DayListsCollection extends Backbone.Collection
  model: Tigerella.Models.DayList
  url: '/day_lists'
