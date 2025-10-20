class City
  attr_reader :Street
  def initialize(street) 
    @Street = street
  end
end

class Street
  attr_reader :Family
  def initialize(family) 
    @Family = family
  end
end

class Family
  attr_reader :Person
  def initialize(person) 
    @Person = person
  end
end

class Person
  def initialize(name)
    @name = name
  end
  def valid_name()
    if city.street.family.person.name.length > 0 
      puts ("Valid!")
    end
  end

end

person = Person.new("Tyler")
family = Family.new(person)
street = Street.new(family)
city = City.new(street)

city.get_name()
