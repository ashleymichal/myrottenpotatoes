Rails.application.routes.draw do

	# Route that posts 'Search TMDb' form
	post '/movies/search_tmdb'
  resources :movies
  root :to => redirect('/movies')
end
