Rails.application.routes.draw do
  resources :tweetmes do
    collection do
      post :confirm
    end
  end
end
