# class Person
#   def initialize(first, last, age, type)
#     @first_name = first
#     @last_name = last
#     @age = age
#     @type = type
#   end

#   def birthday
#     @age += 1
#   end

#   def talk
#     if @type == "Student"
#       puts "Aquí es la clase de programación con Ruby?"
#     elsif @type == "Teacher"
#       puts "Bienvenidos a la clase de programación con Ruby!"
#     elsif @type == "Parent"
#       puts "Aquí es la reunión de apoderados?"
#     end
#   end

#   def introduce
#     if @type == "Student"
#       puts "Hola profesor. Mi nombre es #{@first_name} #{@last_name}."
#     elsif @type == "Teacher"
#       puts "Hola alumnos. Mi nombre es #{@first_name} #{@last_name}."
#     elsif @type == "Parent"
#       puts "Hola. Soy uno de los apoderados. Mi nombre es #{@first_name} #{@last_name}."
#     end
#   end
# end
################################################################################################


class Person
  def initialize(first, last)
    @first_name = first
    @last_name = last
  end
  def talk
    puts "Bienvenidas a todas las personas!"
  end
  def introduce
    puts "Soy una Persona, Mi nombre es #{@first_name} #{@last_name}."
  end
end

class Teacher < Person
  def talk
    puts "¡Bienvenidos a la clase de programación con Ruby!"
  end

  def introduce
    puts "Hola alumnos. Mi nombre es #{@first_name} #{@last_name}."
  end
end

class Student < Person
  def talk
    puts "¿Aquí es la clase de programación con Ruby?"
  end

  def introduce
    puts "Hola profesor. Mi nombre es #{@first_name} #{@last_name}."
  end
end

class Parent < Person
  def talk
    puts "¿Aquí es la reunión de apoderados?  #{@type}"
  end

  def introduce
    puts "Hola. Soy uno de los apoderados. Mi nombre es #{@first_name} #{@last_name}."
  end
end



carla = Person.new("Carla", "Perez")
carla.talk
carla.introduce

carlos = Teacher.new("Carlos", "Perez")
carlos.talk
carlos.introduce

flor = Student.new("Florencia", "Pino")
flor.talk
flor.introduce

manuel = Parent.new("Manuel", "Arancibia")
manuel.talk
manuel.introduce
