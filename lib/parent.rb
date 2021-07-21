# name

class Parent

  def initialize(name)
    @name = name
  end

  def have_child(child_name)
    child = Child.new(child_name, self)
    # child.parent = self
    # child
  end

end

