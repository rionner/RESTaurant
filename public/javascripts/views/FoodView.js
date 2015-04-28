var app = app || {};

app.FoodView = Backbone.View.extend({
  initialize: function(){
    this.listenTo(this.model, 'change', this.render);
    this.listenTo(this.model, 'delete', this.render)
  },

  template: _.template(
    '<h3><%= name %></h3><p>
    <%= description %> </br>
    <%= cents %></p><button class="select-food">Select</button>'),
  tagname: 'li',
  className: 'food',
  render: function(){
    this.$el.append(this.template( this.model.attributes ));
    return this;
  },

  events:{
    'click .select-food': 'selectFood'
  },

  selectFood: function(){
    $('.food-selected').removeClass('food-selected');
    this.$el.addClass('food-selected');
    app.foodSelection = this.model;
  }
});
