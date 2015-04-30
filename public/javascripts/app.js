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

  var updateAll = function(){
    app.foods.fetch();
    app.parties.fetch();
  }

  updateAll();

  $('#place-order').on('click', function() {
    console.log("place-order clicked!");
    if (app.foodSelection && app.partySelection) {

      var partyId = app.partySelection.get('id');
      var foodId = app.foodSelection.get('id');
    }

    $.ajax({
      method: 'post',
      url: '/api/orders',
      data: {order: {party_id: partyId, food_id: foodId} },
      success: function(){
        app.parties.fetch( {reset: true} );

        $('.food-selected').removeClass('food-slected');
        $('.party-selected').removeClass('party-selected');
      } // success function
    }) // ajax call
  }); // $('#place-order').on('click'

  $('#submit-food').on('click', function() {
    console.log('submit-food clicked!');

    $.ajax({
      method: 'post',
      url: '/api/foods',
      data: {food: {name: $('#food').val(), cents: $('#cents').val(), description: $('#description').val() } },
      success: function(){
        app.foods.fetch( {reset: true} );
      } // success function
    }) // ajax call
  }); // event listener

}); // Doc ready
