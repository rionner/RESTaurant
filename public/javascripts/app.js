console.log('check out this backbone stuff')

$(document).ready(function(){
  var foods = new app.FoodCollection();
  foods.fetch();
})
