class MoviesController < ApplicationController
  def index
    @movies = Movie.joins(:director).all
  end

  def new
    @movie = Movie.new
    @movie.build_director
  end

  def create
    if @movie = Movie.create(movie_params)
      redirect_to @movie
    else
      render :new
    end
  end

  def edit
    @movie = Movie.find(params[:id])
  end

  def update
    @movie = Movie.find(params[:id])

    if @movie.update(movie_params)
      redirect_to @movie
    else
      render :edit
    end
  end

  def show
    @movie = Movie.find(params[:id])
  end

  private

  def movie_params
    params.require(:movie).permit(
      :title, :plot, :picture, :release_date, :duration,
      director_attributes: [
        :first_name, :last_name, :country
      ]
    )
  end
end
