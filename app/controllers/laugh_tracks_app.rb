class LaughTracksApp < Sinatra::Base
  get '/comedians' do
    @comedians = Comedian.all
    erb :index
  end
end
