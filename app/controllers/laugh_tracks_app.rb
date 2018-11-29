class LaughTracksApp < Sinatra::Base
  get '/comedians' do
    @comedians = Comedian.all
    @average_age = Comedian.average_age
    @average_runtime = Special.average_runtime
    erb :index
  end
end
