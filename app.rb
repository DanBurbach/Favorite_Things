require('sinatra')
require('sinatra/reloader')
also_reload('lib/**/*.rb')
require('./lib/item')

get('/') do
  Item.clear()
  @list = Item.all()
  @ranked_list = Item.mySort()
  erb(:things)
end

post('/') do
  @new_item = Item.new(params.fetch("name"), params.fetch("rank").to_i)
  @new_item.save()
  @list = Item.all()
  @ranked_list = Item.mySort()
  erb(:things)
end
