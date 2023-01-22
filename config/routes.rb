Rails.application.routes.draw do
  devise_for :users
  root to: "homes#top"
  resources :post_images, only:[:new, :create, :show, :index]
  resources :user
  get '/about' => 'homes#about', as: 'about'
end
