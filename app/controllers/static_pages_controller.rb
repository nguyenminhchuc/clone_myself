class StaticPagesController < ApplicationController
  # before_action :authenticate_user!, only: [:home, :about]
  def home

    @tour = Tour.all
    if params[:search]
      @search_term = params[:search]
      @tour = @tour.search_by(@search_term)
    end
    # @q = Tour.ransack(params[:q])
    # @tour = @q.result
    # @tours = Tour.search(params[:search], params[:id])

  end

  def about; end
end
