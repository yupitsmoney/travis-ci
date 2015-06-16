class Cat 
  attr_accessor :name, :breed

  def initialize name, breed
    @name,@breed  = name,breed
  end

  def append_name add
      @name << add
  end
end
