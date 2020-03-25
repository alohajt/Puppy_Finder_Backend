require 'rest_client'
require 'pp'
require 'json'
require 'byebug'
doggyData = JSON.parse(RestClient.get 'https://dog.ceo/api/breed/hound/images')

 boolerizer = ->(){ [true,false].sample}

   dogs=[]
numberOfDogs = 10
doggoIpsum = "He made many woofs yapper clouds very jealous pupper blep shoob, length boy shibe many pats shibe. sub woofer doge noodle horse. Boof borking doggo pupper yapper doggorino such treat, extremely cuuuuuute long woofer boof. Fat boi maximum borkdrive woofer floofs noodle horse long water shoob, yapper heckin aqua doggo. Boof long woofer tungg wow very biscit shooberino, wow very biscit heckin good boys. Boofers pupperino much ruin diet boofers noodle horse pats, borkf boof clouds. Extremely cuuuuuute length boy long water shoob, borking doggo. Blep shooberino heck you are doing me a frighten, shibe long bois.
"
count = 0
while numberOfDogs <= 10
  dogPicture=doggyData["message"].sample
    dogIndex = doggyData["message"].index(dogPicture)
  breed=doggyData["message"][dogIndex].split('/')[4]
    breed = dogBreed.split('-').reverse
    breed = dogBreed.join(" ")
gwcats = boolerizer.call
gwkids = boolerizer.call
gwdogs = boolerizer.call
species = "dog"
location = Location.all.sample
bio = doggoIpsum

numberOfDogs += 1
end



  

pp doggyData