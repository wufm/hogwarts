Hogwarts::Application.routes.draw do
  route to: 'welcome/index'

  get '/houses' => 'houses#List'
  get '/students' => 'students#index'
  get '/students' => 'students#creat'
end