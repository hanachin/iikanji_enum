Rails.application.routes.draw do
  resources :draft_posts
  resources :published_posts
  resources :posts
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
