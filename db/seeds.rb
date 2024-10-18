#""#### VALIDATION ####
# A restaurant must have a name, an address and a category.
# A restaurant’s category must belong to this fixed list:
# ##["chinese", "italian", "japanese", "french", "belgian"].
# When a restaurant is DESTROYED, all of its reviews must be destroyed as well.

# A review must belong to a restaurant.
# A review must have a content.
# A review must have a rating.
# A review’s rating must be a number between 0 and 5.
# A review’s rating must be an integer. For example, a review with a rating of 2.5 should be invalid!

#--- RESTAURANTS ---
first = Restaurant.create(name: "Ratatouille", category: "french", address: "73007 Paris")
second = Restaurant.create(name: "Momo", category: "belgian", address: "15033 Berlin", phone_number: "067908987")
third = Restaurant.create(name: "Xing-Hong", category: "chinese", address: "28033 Madrid", phone_number: '913770022')
fourth = Restaurant.create(name: "Monhou", category: "japanese", address: "28008 Madrid", phone_number: "914372037")
fifth = Restaurant.create(name: "Peccorino", category: "italian", address: "15333 Berlin")

# --- REVIEWS ---
ratatouille = Review.create(content: 'Amazing, goes directly to the heart', rating: 5)
ratatouille.restaurant = first

momo = Review.create(content: 'Good', rating: 3)
momo.restaurant = second

xing_hong = Review.create(content: 'Very generous amount amount of food for its price', rating: 4)
xing_hong.restaurant = third

monhou = Review.create(content: 'Delicious sushi and exquisit ambience, very japanese', rating: 5)
monhou.restaurant = fourth

peccorino = Review.create(content: 'Tagliattelle a la frutti di mare amazing, but a bit expensive', rating: 3)
peccorino.restaurant = fifth
