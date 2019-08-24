Rails.application.routes.draw do

  devise_for :usuarios
  resources :lists
  namespace :usuarios_backoffice do
    get 'welcome/index'
  end


  #Redirecionando localhost:<port> para /usuarios/sign_in
  root :to => redirect("/lists")
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
