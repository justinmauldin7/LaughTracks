class LaughTracksApp < Sinatra::Base
  get '/comedians' do
    @comedians = Comedian.sorter(params)
    @average_age = Comedian.average_age
    @hometowns = Comedian.unique_hometowns
    @average_runtime = Special.average_runtime
    @total_specials = Special.count
    erb :index
  end
end
