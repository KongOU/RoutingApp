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
  get 'posts/*missing', to: 'posts#missing'

  get 'query/:sth', to: 'pages#something'
  get 'query/:sth/:another_one', to: 'pages#something'

  root to: 'pages#home'
end
