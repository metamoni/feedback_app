Rails.application.routes.draw do
  get 'feedbacks/index'
  root to: 'home#index'
end
