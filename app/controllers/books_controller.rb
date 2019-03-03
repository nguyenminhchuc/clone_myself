class BooksController < ApplicationController
  before_action :find_book_tour_id, only: %i(edit show update destroy)

  def index
    @id_tour = params[:id];
    @book = Book.all
    @tour = Tour.all
  end

  def new
    @book = Book.new
    @id_tour = params[:id];
  end

  def create
    @book = Book.new book_tour_params

    if @book.save
      flash[:success] = "successful tour bookings"
      redirect_to root_url
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
end
