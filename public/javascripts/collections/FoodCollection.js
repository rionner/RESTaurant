var app = app || {};

var app.FoodCollection = Backbone.Collection.extend({
  model: app.FoodModel,
  url: '/api/foods'
})
