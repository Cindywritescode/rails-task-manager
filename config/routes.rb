Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  
  #READ: list all tasks
  get '/tasks', to: 'tasks#index' 
  #READ: view the details of a task
  get '/tasks/:id', to: 'tasks#show'
  #CREATE: add a new task
  get '/tasks/new', to: 'tasks#new' #form 
  post '/tasks', to: 'tasks#create'
  #UPDATE: edit a task (mark as completed / update title & details)
  get '/tasks/:id/edit', to: 'tasks#edit' #form 
  patch '/tasks/:id', to: 'tasks#update'
  #DELETE: remove a task
  delete '/tasks/:id', to: 'tasks#destroy'

  # resources :tasks
end