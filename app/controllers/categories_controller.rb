class CategoriesController < ApplicationController
  before_action :find_category_id, only: %i(edit show update destroy)

  def index
    # @category = Category.all


    @q = Category.ransack(params[:q])
    @category = @q.result
  end

  def new
    @category = Category.new
  end

  def create
    @category = Category.new category_params

    if @category.save
      redirect_to categories_url
    else
      render :new
    end
  end

  def show; end

  def update
    if @category.update(category_params)
      redirect_to @category
    else
      render :edit
    end
  end

  def destroy
    if @category.destroy
      flash[:success] = t "category_delete"
      redirect_to categories_url
    else
      flash[:danger] = t "delete_fail"
    end
  end

  private

  def category_params
    params.require(:category).permit :category
  end

  def find_category_id
    @category = Category.find_by id: params[:id]

    return if @category
    flash[:danger] = t "not_found"
    redirect_to root_url
  end
end
