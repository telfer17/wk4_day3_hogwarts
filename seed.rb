require_relative('models/student')
require_relative('models/house')
require('pry-byebug')


Student.delete_all()
House.delete_all()

house1 = House.new({'name' => 'Gryffindor'})
house2 = House.new({'name' => 'Slytherin'})
house3 = House.new({'name' => 'Hufflepuff'})
house4 = House.new({'name' => 'Ravenclaw'})

house1.save
house2.save
house3.save
house4.save

student1 = Student.new({"first_name" => "Hermione", "last_name" => "Granger", "house_id" => gryffindor.id, "age" => 13})
student1.save()

student2 = Student.new({"first_name" => "Draco", "last_name" => "Malfoy", "house_id" => slytherin.id, "age" => 14})
student2.save()



binding.pry
nil
