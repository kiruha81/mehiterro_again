Rails.application.routes.draw do
  devise_for :users
  root to: "homes#top"
  resources :post_images, only:[:new, :create, :show, :index, :destroy]
  resources :users, only:[:show, :edit, :update]
  get '/about' => 'homes#about', as: 'about'
end
