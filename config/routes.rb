Rails.application.routes.draw do
  resources :posts
  get '/pages', to: 'pages#index', as: 'pages'
  post '/pages', to: 'pages#create'
  get '/pages/new', to: 'pages#new', as: 'new_page'
  get '/pages/:id', to: 'pages#show', as: 'page'
  get '/pages/:id/edit', to: 'pages#edit', as: 'edit_page'
  patch '/pages/:id', to: 'pages#update'
end
