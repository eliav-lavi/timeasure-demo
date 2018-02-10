Rails.application.routes.draw do
  root to: 'home#welcome'

  post 'home/run_demo_job' => 'home#run_demo_job'
end
