Rails.application.routes.draw do
  root :to => 'tweetmes#index'
    resources :tweetmes do
      collection do
        post :confirm
      end
    end
end
