Rails.application.routes.draw do
  get 'working_days/new'

  root 'slots#index'
end
