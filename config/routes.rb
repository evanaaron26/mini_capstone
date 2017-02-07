Rails.application.routes.draw do
    get '/' => 'cars#index'
    get '/cars' => 'cars#index'

    get '/cars/new' =>  'cars#new'
    post '/cars' => 'cars#create'

    get '/cars/:id' => 'cars#show'

    get '/cars/:id/edit' => 'cars#edit'
    patch '/cars/:id' => 'cars#update'

    delete '/cars/:id' => 'cars#destroy' 

    get "/signup" => "users#new"
    post "/users" => "users#create"

    get "/login" => "sessions#new"
    post "/login" => "sessions#create"
    get "/logout" => "sessions#destroy"

    get "/orders" => 'orders#new' 
    post "/orders" => 'orders#create' 

    get "/orders/:id" => "orders#show"
    
    post "/carted_products" => "carted_products#create"

    get '/carted_products' => "carted_products#index"

end


    