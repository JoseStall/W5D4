Rails.application.routes.draw do
  get 'session/new', to: 'session#new', as: 'session_new'
  post 'session/new', to: 'session#create'
  get 'session/destroy', to: 'session#destroy', as: 'session_destroy'
  get 'event/new', to: 'event#new', as: 'event_new'
  post 'event/new', to: 'event#create', as: 'event_create'
  get 'event/show', to: 'event#show', as: 'event_show'
  get 'user/new' , to: 'user#new', as: 'user_new'
  get 'event/show/:id', to: 'event#showid', as:'event_showid'
  post 'user/create', to: 'user#create'
  get 'user/show', to: 'user#show', as: 'user_show'
  get 'user/show/:id', to: 'user#showid', as:'user'
  root to: 'static_pages#home' 
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
