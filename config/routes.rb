Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get 'up' => 'rails/health#show', as: :rails_health_check
  resources :restaurants do
    resources :reviews, only: [:new, :create]
    # anything here gets /restaurants/ at the beginning
    collection do
      # routes that DON'T need an id in the url
      # "custom indexes" -- have many restaurants
      get :new_review
    end
  end

end



# RESOURCES :RESTAURANTS ----# DOES THIS:


# Prefix Verb          URI Pattern                            Controller#Action
# rails_health_check GET    /up(.:format)                          rails/health#show
#        restaurants GET    /restaurants(.:format)                 restaurants#index
#                    POST   /restaurants(.:format)                 restaurants#create
#     new_restaurant GET    /restaurants/new(.:format)             restaurants#new
#    edit_restaurant GET    /restaurants/:id/edit(.:format)        restaurants#edit
#         restaurant GET    /restaurants/:id(.:format)             restaurants#show
#                    PATCH  /restaurants/:id(.:format)             restaurants#update
#                    PUT    /restaurants/:id(.:format)             restaurants#update
#                    DELETE /restaurants/:id(.:format)             restaurants#destroy
# turbo_recede_historical_location GET    /recede_historical_location(.:format)  turbo/native/navigation#recede
# turbo_resume_historical_location GET    /resume_historical_location(.:format)  turbo/native/navigation#resume
# turbo_refresh_historical_location GET    /refresh_historical_location(.:format) turbo/native/navigation#refresh
