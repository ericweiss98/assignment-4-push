Rails.application.routes.draw do
  
  resources :books

  get 'pages/home'

  get 'pages/add'

  get 'pages/edit'

  get 'pages/show'

  get 'pages/delete'

  delete 'pages/destroy'

  post 'pages/create'

  post 'pages/update'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root 'pages#home'

end
