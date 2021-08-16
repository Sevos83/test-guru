Rails.application.routes.draw do
  root 'tests#index'

  resources :tests do
    resources :questions, shallow: true, except: :index do
      resources :answers, shallow: true, expect: :index
  end

  member do
    post :start
  end

  resources :test_passages, only: %i[show update] do
    member do
      get :result
    end
  end
end
