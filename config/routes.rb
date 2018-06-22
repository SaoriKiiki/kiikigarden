Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root "pieces#index"
  resources :pieces
  resources :price_offers



get 'opening_offers' => 'opening#opening_offers', as: 'opening_offers'

get 'pieces_show' => 'pieces#pieces_show', as: 'pieces_show'

end
