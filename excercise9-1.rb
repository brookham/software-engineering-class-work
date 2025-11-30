# Don't modify this class
class Duck
  def quack
    puts "Quack!"
  end

  def waddle
    puts "Waddle"
  end
end

# Don't modify this function
def duck_activate(d)
  d.quack
  d.quack
  d.waddle
  d.quack
end

# TODO: Fix this class so that it walks and talks like a duck
class Panther
  # Do not modify this method
  def roar
    puts "Roar!"
  end

  # Do not modify this method
  def prowl
    puts "You hear nothing"
  end

    def quack
    puts "Quack!"
  end

  def waddle
    puts "Waddle"
  end
end

# Don't modify below this line
d = Duck.new()
duck_activate(d)

p = Panther.new()
duck_activate(p)  # Broken--you should modify Panther to fix