Rails.application.routes.draw do
  get 'books/index'
  get 'authors/index'
  get 'welcome/index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root "welcome#index"

  get 'relatives', to: 'relatives#index'
  get 'relatives ', to: 'relatives#show'
  get 'relatives/new',to: 'relatives#new',as: :new_relative
  post 'relatives', to: 'relatives#create', as: :create_relative
  delete 'relatives/:id',to: 'relatives#destroy',as: :destroy_relative
  get 'relatives/:id/edit', to: 'relatives#edit', as: :edit_relative
  patch 'relatives/:id', to: 'relatives#update', as: :update_relative
  get 'relatives/:id', to: 'relatives#show', as: :relative
  
  get 'students', to: 'students#index'
  get 'students ', to: 'students#show'
  get 'students/new',to: 'students#new',as: :new_student
  post 'students', to: 'students#create', as: :create_student
  delete 'students/:id',to: 'students#destroy',as: :destroy_student
  get 'students/:id/edit', to: 'students#edit', as: :edit_student
  patch 'students/:id',to: 'students#update',as: :update_student
  get 'students/:id',to: 'students#show',as: :student

  
end
