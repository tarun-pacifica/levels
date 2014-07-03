Levels::Application.routes.draw do
   root :to => 'home#index'
   resources :users
   resources :posts
   # get '/posts/author/:id' => 'posts#author'

   get '/users' => 'home#index'

 get '/login' => 'session#new'
  post '/login' => 'session#create'
  delete '/login' => 'session#destroy'

end
