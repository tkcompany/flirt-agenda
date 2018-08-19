Rails.application.routes.draw do
  # Default routes.
  devise_scope :user do
    root to: "users/sessions#new"
  end
  #devise_for :users

  devise_for :users, path: '', controllers: { 
            registrations: "users/registrations",
            confirmations: 'users/confirmations',
            passwords: "users/passwords",
            sessions: "users/sessions"
            
        }, 
        path_names: {
            sign_in: 'login', 
            sign_out: 'logout', 
            password: 'secret', 
            confirmation: 'verification', 
            unlock: 'unblock', 
            registration: 'signup', 
            sign_up: '' 
        }
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
