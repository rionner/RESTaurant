____  _____ ____ _____                           _
|  _ \| ____/ ___|_   _|_ _ _   _ _ __ __ _ _ __ | |_
| |_) |  _| \___ \ | |/ _` | | | | '__/ _` | '_ \| __|
|  _ <| |___ ___) || | (_| | |_| | | | (_| | | | | |_
|_| \_\_____|____/ |_|\__,_|\__,_|_|  \__,_|_| |_|\__|

It's the future! In the olden days... waitstaff needed to keep track of a party's order by hand!
A client has requested an application to help!
Here is what they wrote:
Dear Developer,

I want an application so our waitstaff can manage our food orders...

Overall... an employee should be able to...
 a: select a party of customers
 b: select food items the customers have ordered
 c: see a receipt

We'll keep thinking about it over the next few days and send more details when they come up.
It's up to you! What does this entail?

Some starting ideas:
Food: An item of food on the menu (aka menu item)

name?
cuisine type?
what is the price?
any allergens?
Party: A single group of people

table number?
number of guests?
did they pay yet?
Routes:

Verb	Route	Action
GET	/	Displays the waitstaff's application
GET	/api/foods	All food items available
GET	/api/foods/:id	A single food item and all the parties that included it
POST	/api/foods	Creates a new food item
PATCH	/api/foods/:id	Updates a food item
PUT	/api/foods/:id	Updates a food item
DELETE	/api/foods/:id	Deletes a food item
GET	/api/parties	All parties
GET	/api/parties/:id	A single party and all the orders it contains
POST	/api/parties	Creates a new party
PATCH	/api/parties/:id	Updates a party's details
PUT	/api/parties/:id	Updates a party's details
DELETE	/api/parties/:id	Delete a party
POST	/api/orders	Creates a new order
PATCH	/api/orders/:id	Change item to no-charge
DELETE	/api/orders/:id	Removes an order
GET	/api/parties/:id/receipt	Saves the party's receipt data to a file.
PATCH	/api/parties/:id/checkout	Marks the party as paid
PUT	/api/parties/:id/checkout	Marks the party as paid
Technologies:

Sinatra backend application
Postgresql Database
A Backbone Application for managing parties and orders
By Monday Morning:

Draw ERD for foods & orders & parties
Sketch out a few ideas about how you'd want the application to look on a screen and a phone
Set up a github repository for the application
Add instructors as collaborators:
amadden80
code-for-coffee
alexfulsome
Begin setting up a Ruby application, (i.e. app.rb config.ru etc.)
Front-end
Write a Backbone FoodModel and a FoodCollection
Verify the a new FoodCollection can fetch all the food items (this is less than 10 lines of backbone code)
Write static handwritten HTML to help you style
How does it look on a screen?
How does it look on a phone?
Back-end (all in a single app.rb)
At this stage... support postman NOT backbone for your post requests, i.e. use params
Foods Api (test via postman)
Parties API (test via postman)
Orders API (test via postman)
