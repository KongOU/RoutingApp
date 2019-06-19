Rails.application.routes.draw do
  get 'about', to: 'pages#about'
  get 'routing/customize/contact', to: 'pages#contact', as: 'contact' # as: custom path from routing_customize_contact_path to contact_path
  resources :blogs

  root to: 'pages#home'
end
