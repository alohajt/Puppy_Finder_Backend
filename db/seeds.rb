
require 'pp'
require 'rest_client'
require 'json'
require 'byebug'
require 'pry' 


#WIPE ALL DATA
Favorite.destroy_all
User.destroy_all
Animal.destroy_all
Location.destroy_all

#ACCESSORY DATA
boolerizer = ->(){ [true,false].sample}
doggoIpsum = "He made many woofs yapper clouds very jealous pupper blep shoob, length boy shibe many pats shibe. sub woofer doge noodle horse. Boof borking doggo pupper yapper doggorin bois.
"
doggyData = JSON.parse(RestClient.get 'https://dog.ceo/api/breed/hound/images')
doggyNames = JSON.parse(RestClient.get 'https://data.muni.org/api/views/a9a7-y93v/rows.json?accessType=DOWNLOAD')["data"].map{|n|n[8]}



#locations
denver = Location.create(city:"Denver")
coSprings = Location.create(city:"Colorado Springs")
boulder = Location.create(city:"Boulder")



#users
jon = User.create(username:"jon", 
  password:"jon", picture:'https://scontent-mia3-1.xx.fbcdn.net/v/t1.0-9/p960x960/74694859_10220545676739093_712940987470577664_o.jpg?_nc_cat=111&_nc_sid=85a577&_nc_ohc=vOz4n8D3g-MAX8GOTzh&_nc_ht=scontent-mia3-1.xx&_nc_tp=6&oh=71a73c33ee27f66c933a15c2971f5995&oe=5EA115A5', location:denver)
jeff = User.create(username:"jeff", 
  password:"jeff",
  picture: 'https://scontent.ftpa1-2.fna.fbcdn.net/v/t1.0-9/61256484_10219410271071232_4121356651947098112_n.jpg?_nc_cat=104&_nc_sid=85a577&_nc_ohc=rfJsMVpysqcAX9proei&_nc_ht=scontent.ftpa1-2.fna&oh=53c78640b9d55d1a33467935054e67e0&oe=5E9F63D4', location:coSprings)
jt = User.create(username:"jt",
      password:"jt",
      picture: 'https://scontent.ftpa1-1.fna.fbcdn.net/v/t1.0-9/65902239_1735809036551778_8144335823848865792_n.jpg?_nc_cat=105&_nc_sid=85a577&_nc_ohc=uc94253kdyAAX9Qrfcd&_nc_ht=scontent.ftpa1-1.fna&oh=11fc5a1331d8ea7156a97136e2b7b2c9&oe=5EA17188',
      location:boulder)

# binding.pry
#animals
dogs=[]
numberOfDogs = 65
count = 0
while count <= numberOfDogs

  name = doggyNames.sample
  dogPicture=doggyData["message"].sample
    dogIndex = doggyData["message"].index(dogPicture)
  breed=doggyData["message"][dogIndex].split('/')[4].split('-').reverse.join(" ")
  Animal.create(name:name,
      bio:doggoIpsum,
      species:"dog",
      breed:breed,
      gwcats:boolerizer.call,
      gwkids:boolerizer.call,
      gwdogs:boolerizer.call,
      location:Location.all.sample,
      picture:dogPicture
    )

count += 1
end



#favorites
Favorite.create(user:jon, animal:Animal.all.sample)
Favorite.create(user:jon, animal:Animal.all.sample)
Favorite.create(user:jt, animal:Animal.all.sample)
Favorite.create(user:jt, animal:Animal.all.sample)


