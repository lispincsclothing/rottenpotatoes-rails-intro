class MoviesController < ApplicationController

  def movie_params
    params.require(:movie).permit(:title, :rating, :description, :release_date)
  end

  def show
    id = params[:id] # retrieve movie ID from URI route
    @movie = Movie.find(id) # look up movie by unique ID
    # will render app/views/movies/show.<extension> by default
  end

  def index
    if (params[:sort_by].blank? && params[:ratings].blank? && !session[:sort_by].blank?)
      flash.keep
      redirect_to :sort_by => session[:sort_by], :ratings => session[:ratings]
    end

    if params[:sort_by]
      @sort_by = params[:sort_by]
    elsif session[:sort_by]
      @sort_by = session[:sort_by]
    else
      @sort_by = 'id'
    end
    if params[:ratings]
      @ratings_hash = params[:ratings]
    elsif session[:ratings]
      @ratings_hash = session[:ratings]
    else
      @ratings_hash = Hash[Movie.all_ratings.map {|v| [v,v]}]
    end

    @ratings_hash = params[:ratings] ? params[:ratings] : Hash[Movie.all_ratings.map {|v| [v,v]}]
    @all_ratings=Movie.all_ratings

    session[:sort_by] = @sort_by
    session[:ratings] = @ratings_hash

    @movies = params[:ratings] ? Movie.where("rating IN (?)", @ratings_hash.keys) : Movie.all
    @movies.order!(@sort_by)
    case @sort_by
    when 'title'
      @title_header='hilite'
    when 'release_date'
      @release_header='hilite'
    end
  end

  def new
    # default: render 'new' template
  end

  def create
    @movie = Movie.create!(movie_params)
    flash[:notice] = "#{@movie.title} was successfully created."
    redirect_to movies_path
  end

  def edit
    @movie = Movie.find params[:id]
  end

  def update
    @movie = Movie.find params[:id]
    @movie.update_attributes!(movie_params)
    flash[:notice] = "#{@movie.title} was successfully updated."
    redirect_to movie_path(@movie)
  end

  def destroy
    @movie = Movie.find(params[:id])
    @movie.destroy
    flash[:notice] = "Movie '#{@movie.title}' deleted."
    redirect_to movies_path
  end

end
