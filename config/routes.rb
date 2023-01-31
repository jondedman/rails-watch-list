Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  resources :lists do
    resources :bookmarks
  end

  # resources :movies do
  #   resources :bookmarks
  # end
end

# notice The shallow: true option is used to optimize the URL structure by only including the parent resource ID in the URL for the nested resource's "new" and "edit" actions. For all other actions, the parent resource ID is included in the URL as a parameter.
# resources :lists do
#   resources :bookmarks, shallow: true
# end

# resources :movies do
#   resources :bookmarks, shallow: true
# end

# GET "lists/42/bookmarks/new"
# POST "lists/42/bookmarks"
