var app = app || {};

$(document).ready(function(){

  app.foods = new app.FoodCollection({
    model: app.FoodModel
  })

  app.parties = new app.PartyCollection({
    model: app.PartyModel
  })

  app.foodListView = new app.ListView({
    modelView: app.FoodView,
    collection: app.foods,
    el: $('#menu-list')
  })

  app.partyListView = new app.ListView({
    modelView: app.PartyView,
    collection: app.parties,
    el: $('#party-list')
  })

  app.foods.fetch();
  app.parties.fetch();

});
