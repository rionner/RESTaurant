var app = app || {};

var app.PartyCollection = Backbone.Collection.extend({
  model: app.PartyModel,
  url: '/api/parties'
})
