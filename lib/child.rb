# name, dob, allergies, parent

class Child
  attr_reader :name
  attr_accessor :parent

  def initialize(name, parent = nil)
    @name = name
    @allergies = []
    @parent = parent
    @dob = Time.now
  end

end

