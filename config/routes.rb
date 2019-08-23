Rails.application.routes.draw do
  resources :lists
  namespace :usuarios_backoffice do
    get 'welcome/index'
  end
  devise_for :usuarios

  #Redirecionando localhost:<port> para /usuarios/sign_in
  root :to => redirect("/lists")
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
