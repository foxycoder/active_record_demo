class MoviesController < ApplicationController
  def index
    @movies = Movie.joins(:director).all
  end

  def new
    @movie = Movie.new
    @movie.build_director
    @movie.roles.build
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
    @movie.roles.build
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
      ],
      roles_attributes: [
        :id, :name, :actor_id, :_destroy
      ]
    )
  end
end
