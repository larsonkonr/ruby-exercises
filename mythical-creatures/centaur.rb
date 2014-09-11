class Centaur

  attr_reader :name, :breed

  def initialize(name, breed = "Palomino")
    @name = name
    @breed = breed
    @cranky = false
    @standing = true
    @cranky_count = 0
    @laying = false
  end

  def lay_down
    @standing = false
    @laying = true
  end

  def stand_up
    @standing = true
    @laying = false
  end

  def laying?
    @laying
  end

  def sleep
    if @standing
      "NO!"
    else
      @cranky_count = 0
      @cranky = false
    end
  end

  def shoot
    @cranky_count += 1
    if @cranky_count >= 3
      @cranky = true
      "NO!"
    elsif @laying
      "NO!"
    else
      "Twang!!!"
    end
  end

  def run
    @cranky_count += 1
    if @cranky_count >= 3
      @cranky = true
      "NO!"
    elsif @laying
      "NO!"
    else
      "Clop clop clop clop!!!"
    end
  end

  def cranky?
    if @cranky_count >= 3
      @cranky = true
    else
      @cranky = false
    end

    @cranky
  end

  def standing?
    @standing
  end


end
