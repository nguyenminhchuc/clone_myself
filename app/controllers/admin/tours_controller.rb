class Admin::ToursController < ApplicationController
  before_action :find_tour_id, only: %i(edit show update destroy)

  def index
    @tour = Tour.all
  end

  def new
    @tour = Tour.new
  end

  def create
    @tour = Tour.new tour_params

    if @tour.save
      redirect_to admin_tours_url
    else
      render :new
    end
  end

  def show; end

  def update
    if @tour.update tour_params
      redirect_to admin_tour_path @tour
    else
      render :edit
    end
  end

  def destroy
    if @tour.destroy
      flash[:success] = "tour deleted"
      redirect_to admin_tours_url
    else
      flash[:danger] = t "delete_fail"
    end
  end

  private

  def tour_params
    params.require(:tour).permit :tour_name, :description, :country, :city, :price, :number_day, :category_id, :discount_id, :image
  end

  def find_tour_id
    @tour = Tour.find_by id: params[:id]

    return if @tour
    flash[:danger] = t "not_found"
    redirect_to admin_root_url
  end
end
