Favorite.destroy_all
User.destroy_all
Animal.destroy_all
Location.destroy_all

#locations
denver = Location.create(city:"Denver")
coSprings = Location.create(city:"Colorado Springs")
boulder = Location.create(city:"Boulder")
#users
jon = User.create(username:"jon", location:denver)
jeff = User.create(username:"jeff", location:coSprings)
jt = User.create(username:"jt", location:boulder)
#animals
rusty = Animal.create(name:"rusty",location:denver)
dusty = Animal.create(name:"dusty",location:denver)
musty = Animal.create(name:"musty",location:coSprings)
#favorates
Favorite.create(user:jon, animal:dusty)
Favorite.create(user:jon, animal:rusty)
Favorite.create(user:jt, animal:rusty)
Favorite.create(user:jt, animal:dusty)
