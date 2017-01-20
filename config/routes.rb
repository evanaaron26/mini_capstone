Rails.application.routes.draw do
	get '/getit' => 'cars#getit'
    post '/car' => 'cars#cars'
end
