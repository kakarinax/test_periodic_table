Rails.application.routes.draw do
  resources :elements
  root to: "welcome#index"
  resources :table, only: %i[index show]
end
