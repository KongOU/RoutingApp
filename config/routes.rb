Rails.application.routes.draw do
  namespace :admin do
    get 'dashboard/main'
    get 'dashboard/user'
    get 'dashboard/blog'
  end
  
  get 'about', to: 'pages#about'
  get 'routing/customize/contact', to: 'pages#contact', as: 'contact' # as: custom path from routing_customize_contact_path to contact_path
  resources :blogs
  resources :posts

  root to: 'pages#home'
end
