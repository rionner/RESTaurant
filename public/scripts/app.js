console.log('check out this backbone stuff')

var FoodModel = Backbone.Model.extend({});

var FoodCollection = Backbone.Collection.extend({
  model: FoodModel,
  url: '/api/foods'
})

$(document).ready(function(){
  var foods = new FoodCollection();
  foods.fetch();
})
