#public
class Employee

  def prepare(bike)
    if respond_to?("prepare")
      bike.prepare
    else
      puts 'Uhh, boss, I dunno how to do that.'
    end
  end

end
#private
class BmxBike
  def prepare
    clean
  end
  def clean
    puts 'Cleaning...'
  end

end
#private
class RoadBike
  def prepare
    lubricate_gears
  end
  def lubricate_gears
    puts 'Lubricating gears...'
  end

end
#private
class MountainBike
  def prepare
    adjust_suspension
  end
  def adjust_suspension
    puts 'Adjusting suspension...'
  end

end
#private
class Tricycle
  def prepare
    adjust_seat
  end
  def adjust_seat
    puts 'Adjusting seat...'
  end

end

bikes = [BmxBike.new, RoadBike.new, MountainBike.new, Tricycle.new]

employee = Employee.new

bikes.each do |bike|
  employee.prepare(bike)
end