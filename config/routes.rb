Rails.application.routes.draw do
  get 'event/new'
  get 'event/create'
  get 'event/show'
  get 'user/new'
  get 'user/create'
  get 'user/show'
  get 'static_pages/home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
