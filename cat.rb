class Cat

  def initialize(name)
    @name = name
  end

  attr_accessor :preffered_food
  attr_accessor :meal_time

  def eats_at
    case @meal_time
    when 0
      p "12AM"
    when 1..11
      p "#{meal_time}AM"
    when 12
      p "12PM"
    when 13..23
      p "#{meal_time - 12}PM"
    end
  end

  def meow
    puts "My name is #{@name} and I eat #{@preffered_food} at #{eats_at}."
  end

end
