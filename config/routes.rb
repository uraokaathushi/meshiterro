Rails.application.routes.draw do
   root to: "homes#top"
  resources :post_images, only: [:new, :create, :index, :show]
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
 get 'homes/about', to: 'homes#about', as: 'about'

end


