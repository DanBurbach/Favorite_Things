require('item')
require('rspec')

describe(Item) do
  describe('.mySort') do
    it('sorts our list of items by rank') do
      new_item = Item.new("pizza", 8).save
      new_item = Item.new("burrito", 1).save
      new_item = Item.new("cheeze block", 2).save
      expect(Item.mySort).to(eq(""))
    end
  end
end
