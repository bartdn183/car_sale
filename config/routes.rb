Rails.application.routes.draw do

  devise_for :users, :controllers => {sessions: "sessions", :registrations => "registrations"}
  authenticated :user do
    root :to => "welcome#index"
    # Rails 4 users must specify the 'as' option to give it a unique name
    # root :to => "main#dashboard", :as => "authenticated_root"
  end

  unauthenticated :user do
    root :to => "welcome#index"
    # Rails 4 users must specify the 'as' option to give it a unique name
    # root :to => "main#dashboard", :as => "authenticated_root"
  end
    get 'control_center' => 'control_center#index'
  resources :car_pictures

  root 'welcome#index'

  get 'inventory' => 'inventory#index'

  post 'contact_form' => 'welcome#contact_form'

    get '*path' => redirect('/')
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
