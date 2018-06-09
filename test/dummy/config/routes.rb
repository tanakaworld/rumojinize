Rails.application.routes.draw do
  root 'articles#index'
  resources :articles
  resources :rumojinized_articles
end
