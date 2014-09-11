class Hobbit
  attr_reader :name, :disposition, :age

  def initialize (name, disposition = "homebody")
    @name = name
    @disposition = disposition
    @age = 0
    @adult = 33
  end

  def celebrate_birthday
    @age += 1
  end

  def adult?
    @age >= @adult
  end

end
