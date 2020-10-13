Rails.application.routes.draw do
  devise_for :users, :controllers => {
     :omniauth_callbacks => "https://secure-temple-87364.herokuapp.com/users/auth/facebook/callback" }
  resources :movies
  root "movies#index"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
