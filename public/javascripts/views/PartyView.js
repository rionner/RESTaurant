// If there is an app, use it. If not - create a new object
var app = app || {};

// Use the html template in id='party-template'
// app.partyViewTemplate = $('#party-template').html();

// Create a Backbone View
app.PartyView = Backbone.View.extend({
    initialize: function(){
    // View should listen to model changes, and re-render if changed
    this.listenTo(this.model, 'change', this.render);
    // View should listen to model deletions, and remove model
    this.listenTo(this.model, 'delete', this.remove);
  },

  // Use and underscore template function
  // Pass in the variable template for the html string
  template: _.template('<p><%= table_num %><button class="select-party">Select</button>'),
  tagName: 'li',
  className: 'party',
  render: function(){
    this.$el.html( this.template( this.model.attributes ) );
    this.renderFoodList();
    return this;
  },

  renderFoodList: function(){
  // Assume foods are included in the Party
    if (this.model.attributes.foods) {
      var foods = this.model.get('foods');
      var foodList = $('<ul>');
      for (var i = 0; i < foods.length; i++) {
        foodList.append( $('<li>').text( foods[i]['name'] ) );
      }
      this.$el.append(foodList);
    }

  },

  events:{
    'click .select-party': 'selectParty'
  },

  selectParty: function() {
    $('.party-selected').removeClass('party-selected');
    this.$el.addClass('party-selected');
    app.partySelection = this.model;
  }
});
