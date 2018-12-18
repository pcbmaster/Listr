
puts "Making some lists..."
games = List.create(title: "Favorite Games", description: "A list of all my favorite games", type: "Collection")
movies = List.create(title: "Favorite Movies", description: "A list of all my favorite movies", type: "Collection")
todo = List.create(title: "Today's ToDos", description: "A list of things that I need to do today", type: "ToDo")
shopping = List.create(title: "Grocery 12/17/2018", description: "Stuff to buy", type: "Grocery")
puts "Putting items on each list..."
games.list_items.create(description: 'Portal 2')
games.list_items.create(description: 'Quake 3 Arena')
games.list_items.create(description: 'Unreal Tournament 99')
games.list_items.create(description: 'R6: Siege')
games.list_items.create(description: 'Destiny 2')
games.list_items.create(description: 'Oblivion')
games.list_items.create(description: 'Fallout: New Vegas')

movies.list_items.create(description: 'Zootopia')
movies.list_items.create(description: 'Sahara')
movies.list_items.create(description: 'Jin-Roh: The Wolf Brigade')
movies.list_items.create(description: 'Demolition Man')

todo.list_items.create(description: 'Finish Evaluation')
todo.list_items.create(description: 'Take Nap')
todo.list_items.create(description: 'Finish 3D printer modifications')
todo.list_items.create(description: 'Do Laundry')

shopping.list_items.create(description: 'Eggs')
shopping.list_items.create(description: 'Bacon')
shopping.list_items.create(description: 'Dr. Pepper Ten')
shopping.list_items.create(description: 'Beef')
shopping.list_items.create(description: 'Pringles')
#Yes those are all factual!
puts "Done!"

