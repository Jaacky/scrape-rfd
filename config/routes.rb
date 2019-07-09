Rails.application.routes.draw do
  get 'scrape/index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root 'scrape#index'
end
