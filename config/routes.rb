Rails.application.routes.draw do
  get 'working_days/new'
  resources :working_days
  resources :slots do 
		patch 'select',	on: :member
	end
  root 'working_days#index'
end
