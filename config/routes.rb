Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  resources :restaurants, only:[:index, :create, :new, :show] do
    resources :reviews, only: [:index, :new, :create]
  end
end

# #                            Prefix Verb URI Pattern                                       Controller#Action
# restaurant_reviews GET  /restaurants/:restaurant_id/reviews(.:format)     reviews#index
# POST /restaurants/:restaurant_id/reviews(.:format)     reviews#create
# new_restaurant_review GET  /restaurants/:restaurant_id/reviews/new(.:format) reviews#new
# restaurants GET  /restaurants(.:format)                            restaurants#index
# POST /restaurants(.:format)                            restaurants#create
# new_restaurant GET  /restaurants/new(.:format)                        restaurants#new
# restaurant GET  /restaurants/:id(.:format)                        restaurants#show
# turbo_recede_historical_location GET  /recede_historical_location(.:format)             turbo/native/navigation#recede
# turbo_resume_historical_location GET  /resume_historical_location(.:format)             turbo/native/navigation#resume
# turbo_refresh_historical_location GET  /refresh_historical_location(.:format)            turbo/native/navigation#refresh
