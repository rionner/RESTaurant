var app = app || {};

app.foods = new app.FoodCollection({
  model: app.FoodModel
});

app.foods.fetch();
