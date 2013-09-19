MackOverflow::Application.routes.draw do

  resources :users, except: [:index]
  resources :questions
  resources :answers, except: [:index]

  resources :users do 
    resources :questions, :only => [:show]
  end

  resources :users do 
    resources :answers, :only => [:show]
  end

 root :to => 'question#index'

end
