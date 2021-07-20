require "pry"
require "securerandom"

class Food
  # attr_writer :type
  # attr_reader :type
  attr_accessor :type
  @@all = []

  # @type here == class instance variable
  # puts @type
  def initialize
    @@all << self
  end

  def self.all
    @@all
  end

  # def type=(arg)
  #   @type = arg
  # end

  # def type
  #   @type
  # end

  # def instance_method
  #   @type # belongs to the instance
  #   @@type # belongs to the class
  # end

  # def self.class_method
  #   @type # belongs to the class
  #   @@type # belongs to the class
  # end
end


class Account
  attr_reader :number
  attr_writer :password

  def initialize
    @number = SecureRandom.hex(10)
  end

  def authenticate(password)
    @password == password
  end
end


binding.pry