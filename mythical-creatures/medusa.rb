class Medusa

  attr_reader :name

  def initialize(name)
    @name = name
    @statues = []
  end

  def statues
    @statues
  end

  def stare(person)
    person.stoned = true
    @statues.push(person)
  end
end

class Person

  attr_reader :name
  attr_accessor :stoned

  def initialize(name)
    @name = name
    @stoned = false
  end

  def stoned?
    @stoned
  end

end
