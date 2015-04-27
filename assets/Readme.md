- An application for waitstaff to manage food orders.

- An employee should be able to:
 > select a party of customers
 > select food items the customers have ordered
 > see a receipt

Data Tables:
:Food: belongs to: order
 > ID (serial primary key)
 > Name (varchar)
 > Price (integer)
 > Vegan (boolean)
 > Vegetarian (boolean)


:Party: belongs to: order
 > ID (serial primary key)
 > People Count (integer)


:Order: has many: foods, has many: parties
 > ID (serial primary key)
 > Table Number (integer)
 > Paid (boolean)
 > Food IDs
 > Party ID


Routes:

Verb Route Action
 > GET	/	Displays the waitstaff's application
 > GET	/api/foods	All food items available
 > GET	/api/foods/:id	A single food item and all the parties that included it
 > POST	/api/foods	Creates a new food item
 > PATCH	/api/foods/:id	Updates a food item
 > PUT	/api/foods/:id	Updates a food item
 > DELETE	/api/foods/:id	Deletes a food item
 > GET	/api/parties	All parties
 > GET	/api/parties/:id	A single party and all the orders it contains
 > POST	/api/parties	Creates a new party
 > PATCH	/api/parties/:id	Updates a party's details
 > PUT	/api/parties/:id	Updates a party's details
 > DELETE	/api/parties/:id	Delete a party
 > POST	/api/orders	Creates a new order
 > PATCH	/api/orders/:id	Change item to no-charge
 > DELETE	/api/orders/:id	Removes an order
 > GET	/api/parties/:id/receipt	Saves the party's receipt data to a file.
 > PATCH	/api/parties/:id/checkout	Marks the party as paid
 > PUT	/api/parties/:id/checkout	Marks the party as paid


Technologies:

 > Sinatra backend application
 > Postgresql Database
 > A Backbone Application for managing parties and orders


By Monday Morning:

 > ERD for foods & orders & parties
 > Set up a github repository for the application
 > Add instructors as collaborators:amadden80, code-for-coffee, alexfulsome
 > Set up a Ruby application, (i.e. app.rb config.ru etc.)
 > Write a Backbone FoodModel and a FoodCollection
 > Verify the a new FoodCollection can fetch all the food items (this is less than 10 lines of backbone code)

Write static handwritten HTML to help you style - for a screen and a phone
 > Back-end (all in a single app.rb)
 > Foods Api (test via postman)
 > Parties API (test via postman)
 > Orders API (test via postman)
