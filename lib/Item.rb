require('pry')

class Item
  attr_accessor :name, :rank
  @@list = []
  @@ranked_list = []

  def initialize(name, rank)
    @name = name
    @rank = rank
  end

  def self.all()
    @@list
  end

  def save()
    # found = self.name
    if @@list.find {|x| x = self} == [self]
    else
      @@list.push(self)
      binding.pry
    end
  end

  def self.mySort()
    @@ranked_list = @@list.sort_by {|item| item.rank}
    @@ranked_list
  end

  def self.clear()
  @@list = []
  end
end
