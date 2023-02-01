Rails.application.routes.draw do

  resources :lists do
    resources :bookmarks
  end

  resources :bookmarks, only: [:destroy]


end
 # resources :movies do
  #   resources :bookmarks
  # end
# notice The shallow: true option is used to optimize the URL structure by only including the parent resource ID in the URL for the nested resource's "new" and "edit" actions. For all other actions, the parent resource ID is included in the URL as a parameter.
# resources :lists do
#   resources :bookmarks, shallow: true
# end

# resources :movies do
#   resources :bookmarks, shallow: true
# end

# GET "lists/42/bookmarks/new"
# POST "lists/42/bookmarks"
