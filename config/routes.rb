Rails.application.routes.draw do

  root :to => 'welcome#index'

  resources :students
  resources :houses

end
