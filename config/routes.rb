Rails.application.routes.draw do
  devise_for :users
  get 'pages/index'
  get 'pages/show'
  root 'pages#index'

  get 'pages/newprofile'

  mount LetterOpenerWeb::Engine, at: '/letter_opener' if Rails.env.development?
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end