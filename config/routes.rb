Rails.application.routes.draw do
  root to: 'home#welcome'

  post 'home/demonstrate_single' => 'home#demonstrate_single'
end
