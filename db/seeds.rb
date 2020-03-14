# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

candies = [
    {name: "Hershey's Bar", candy_type: "Chocolate", flavor: "Chocolate", description: "A standard chocolate bar.", inventory: 50, price: 2.26},
    {name: "Pop Rocks", candy_type: "Hard Candy", flavor: "Strawberry", description: "Tiny rocks that pop in your mouth.", inventory: 70, price: 1.75},
    {name: "Tootsie Rolls", candy_type: "Taffy", flavor: "Vanilla", description: "Little chocolate chewy things.", inventory: 90, price: 2.15},
    {name: "Chick-O-Stick", candy_type: "Coconut", flavor: "Coconut", description: "An orange cardboard stick made of peanut butter and coconut shreds.", inventory: 30, price: 1.30},
    {name: "Cotton Candy", candy_type: "Chocolate", flavor: "Cotton", description: "Fluffy sugar on a stick.", inventory: 10, price: 1.00}
]

candies.each { |candy| Candy.find_or_create_by(candy) }

customers = [
    {f_name: "Millie", l_name: "Mill", username: "MilleM"},
    {f_name: "John", l_name: "Jacobs", username: "JohnJ"},
    {f_name: "Frank", l_name: "Fitzgerald", username: "FrankF"},
    {f_name: "Candice", l_name: "Collins", username: "CandiceC"}
]

customers.each { |customer| Customer.find_or_create_by(customer) }

carts = [
    {purchased: false, customer_id: 1, total: 0.00},
    {purchased: true, customer_id: 3, total: 0.00},
    {purchased: false, customer_id: 2, total: 0.00}
]

carts.each { |cart| Cart.find_or_create_by(cart) }

# If you delete a migration by mistake: drop the table, do a rails g migration (table_name) (attributes)
# and dont forget to add your model 

cart_candies = [
    {cart_id: 1, candy_id: 2},
    {cart_id: 2, candy_id: 3},
    {cart_id: 3, candy_id: 1}
]

cart_candies.each { |c| CartCandy.find_or_create_by!(c) }
