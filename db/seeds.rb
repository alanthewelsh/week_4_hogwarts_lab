require_relative('../models/student')
require_relative('../models/house')

Student.delete_all
House.delete_all

house1 = House.new( {
  "name" => "Gryffindor",
  "logo" => "https://vignette2.wikia.nocookie.net/harrypotter/images/e/ee/Gryffindor_Crest-0.jpg/revision/latest?cb=20160729145529"
  } )

house2 = House.new( {
  "name" => "Ravenclaw",
  "logo" => "https://vignette4.wikia.nocookie.net/harrypotter/images/2/28/Download_%284%29.jpg/revision/latest?cb=20160729145945"
  } )

house3 = House.new( {
  "name" => "Hufflepuff",
  "logo" => "https://s-media-cache-ak0.pinimg.com/originals/e0/e2/bc/e0e2bca469b63385d89ec2f1250e4ca5.jpg"
  } )

house4 = House.new( {
  "name" => "Slytherin",
  "logo" => "https://vignette4.wikia.nocookie.net/harrypotter/images/e/ef/Slytherin%E2%84%A2_Crest_%28Painting%29.png/revision/latest?cb=20091129190321"
  } )

house1.save()
house2.save()
house3.save()
house4.save()

student1 = Student.new( { 
"first_name" => "Harry",
"last_name" => "Potter",
"age" => "18",
"house_id" => house1.id
  } )

student2 = Student.new( { 
"first_name" => "Hermione",
"last_name" => "Granger",
"age" => "18",
"house_id" => house1.id
  } )

student3 = Student.new( { 
"first_name" => "Draco",
"last_name" => "Malfoy",
"age" => "17",
"house_id" => house4.id
  } )

student4 = Student.new( { 
"first_name" => "Ron",
"last_name" => "Weasley",
"age" => "18",
"house_id" => house1.id
  } )

student1.save()
student2.save()
student3.save()
student4.save()

