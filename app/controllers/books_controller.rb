class BooksController < ApplicationController
  before_action :find_book_tour_id, only: %i(edit show update destroy)
  before_action :id_tour

  def index
    @book = Book.where(user_id: @id_user)
    @tour = Tour.where(id: @id_tour)

  end

  def new
    @book = Book.new
  end

  def create
    @book = Book.new book_tour_params
    if @book.save
      flash[:success] = "successful tour bookings"
      redirect_to admin_tour_path(1)
      # redirect_to root_url
    else
      render :new
    end
  end

  def show
  end

  def update
    if @book.update book_tour_params
      redirect_to book_path @book
    else
      render :edit
    end
  end

  def destroy
    if @book.destroy
      flash[:success] = "book deleted"
      redirect_to root_url
    else
      flash[:danger] = t "delete_fail"
    end
  end

  private

  def book_tour_params
    params.require(:book).permit :name, :address, :telephone, :number_user, :status, :tour_id, :user_id
  end

  def find_book_tour_id
    @book = Book.find_by id: params[:id]

    return if @book
    flash[:danger] = t "not_found"
    redirect_to root_url
  end

  def id_tour
    @id_tour = params[:id]
    @id_user = params[:id_user]
  end
end
