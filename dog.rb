require "pry"

# name, size, house_trained, dob
class Dog
  attr_accessor :name, :size, :house_trained
  attr_reader :dob

  @@all = [] # leaky inheritance
  # ALL = [] # not inherited
  # @all = []

  def initialize(name, size, house_trained)
    @@all << self
    @name = name 
    @size = size
    @house_trained = house_trained
    @dob = Time.now
  end

  # def self.all
  #   @@all
  # end

  # return ALL dogs that are house trained
  class << self
    
    def house_trained_dogs
      @@all.select {|dog| dog.house_trained}
    end

    def all
      @@all
    end

  end

end

# class Lab < Dog

#   @all = []

#   def initialize
#     self.class.all << self
#     @@all << self
#   end

#   def self.all
#     @all
#   end

# end

# class Chihuahua < Dog

#   ALL = []

#   def initialize
#     ALL << self
#     @@all << self
#   end

#   def self.all
#     ALL
#   end

# end

# class GSD < Dog

#   @all = []

#   def initialize
#     self.class.all << self
#     @@all << self
#   end

#   def self.all
#     @all
#   end

# end

# class GoldenRetriever < Dog

#   @all = []

#   def initialize
#     self.class.all << self
#     @@all << self
#   end

#   def self.all
#     @all
#   end

# end

Dog.new("Jitta", "s", true)
Dog.new("Spot", "l", false)
Dog.new("Gus", "m", true)
Dog.new("Fred", "m", true)
# Lab.new
# Chihuahua.new
# GSD.new
# GoldenRetriever.new

binding.pry