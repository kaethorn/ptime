PanterControlling::Application.routes.draw do

  resources :plans

  resources :project_milestones, :only => [:new, :create, :index, :edit, :destroy]

  resources :milestones, :only => [:new, :create, :index, :edit, :destroy]

  resources :accountings

  match '/admin' => "admin#index"

  resource :report

  resources :project_states, :only => [:new, :create, :index]

  resources :entries

  resources :projects

  devise_for :users
  
  resources :users
  
  root :to => 'entries#new'

  match '/exception_test' => 'exception_test#error'
end
