Rails.application.routes.draw do
  get 'doctor_portal/index'
  get 'portals/receptionist'
  get 'portals/doctor'
  get 'home/index'
  devise_for :users
  resources :patients
  root 'home#index'

  get 'receptionist_portal', to: 'portals#receptionist'
  get 'doctor_portal', to: 'portals#doctor'
end
