Rails.application.routes.draw do
 
  namespace :api do
    namespace :v1 do
      resources :subjects, only: [:index, :show, :new, :create, :destroy]
      resources :quizzes, only: [:index, :show, :new, :create, :destroy]
      resources :options, only: [:index, :show, :new, :create, :destroy]
  end
end
end
