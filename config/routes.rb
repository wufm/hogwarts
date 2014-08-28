Rails.application.routes.draw do

  root :to => 'welcome#index'
  get 'students/scramble', action: 'scramble', controller: 'students'

  resources :students
  resources :houses

end
