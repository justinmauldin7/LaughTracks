class LaughTracksApp < Sinatra::Base
  get '/comedians' do
    @comedians = Comedian.sorter(params)
    @average_age = Comedian.average_age
    @average_runtime = Special.average_runtime
    @hometowns = Comedian.unique_hometowns
    erb :index
  end
end
