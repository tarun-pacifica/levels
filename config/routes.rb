Levels::Application.routes.draw do
   root :to => 'users#index'
   resources :users
   resources :posts
   # get '/posts/author/:id' => 'posts#author'
end
