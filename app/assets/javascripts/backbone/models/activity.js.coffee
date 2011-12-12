class Tigerella.Models.Activity extends Backbone.Model
  paramRoot: 'activity'

  defaults:
    title: null
    comment: null
    estimate: null
    day_list_id: null

class Tigerella.Collections.ActivitiesCollection extends Backbone.Collection
  model: Tigerella.Models.Activity
  url: '/activities'
