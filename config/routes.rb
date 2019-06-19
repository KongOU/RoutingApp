Rails.application.routes.draw do
  get 'about', to: 'pages#about'
  get 'routing/customize/contact', to: 'pages#contact'
  resources :blogs
end
