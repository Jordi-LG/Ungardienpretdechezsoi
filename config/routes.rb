Rails.application.routes.draw do

  get 'team', to: 'staticpages#team'
  get 'contact', to: 'staticpages#contact'


  root to: 'staticpages#index'

  devise_for :petsitters
  devise_for :petowners
  resources :petsitters, only: [:show, :index] do
    resources :avatars, only: [:create]
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :associations, only: [:show]
end
