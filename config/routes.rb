Rails.application.routes.draw do
  root to: 'home#welcome'

  post 'home/action' => 'home#action'
end
