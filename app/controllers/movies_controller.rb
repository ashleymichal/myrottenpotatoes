class MoviesController < ApplicationController
	
	def index
		@sort_order = params[:sort_order] || :title
		@movies = Movie.order(@sort_order)
	end

	def search_tmdb
		# hardwire to simulate failure
		flash[:warning] = "'#{params[:search_terms]}' was not found in TMDb."
		redirect_to movies_path
	end

	def show
		id = params[:id]
		begin
			@movie = Movie.find(id)
		rescue ActiveRecord::RecordNotFound
			flash[:warning] = "Requested movie does not exist."
			redirect_to movies_path
		end
	end

	def new
	end

	def create
		@movie = Movie.new(movie_params)
		if @movie.save
			flash[:notice] = "#{@movie.title} was successfully created."
			redirect_to @movie
		else
			render 'new'
		end
	end

	def edit
		@movie = Movie.find params[:id]
	end

	def update
		@movie = Movie.find params[:id]
		if @movie.update_attributes(movie_params)
			flash[:notice] = "#{@movie.title} was successfully updated."
			redirect_to @movie
		end
	end

	def destroy
		@movie = Movie.find(params[:id])
		@movie.destroy
		flash[:notice] = "Movie '#{@movie.title}' deleted."
		redirect_to movies_path
	end

  private

    def movie_params
      params.require(:movie).permit(:title, :rating, :release_date)
    end

end
