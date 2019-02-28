class DiscountsController < ApplicationController
  before_action :find_discount_id, only: %i(edit show update destroy)

  def index
    @discount = Discount.all
  end

  def new
    @discount = Discount.new
  end

  def create
    @discount = Discount.new discount_params

    if @discount.save
      redirect_to discounts_url
    else
      render :new
    end
  end

  def show; end

  def update
    if @discount.update discount_params
      redirect_to discounts_url
    else
      render :edit
    end
  end

  def destroy
    if @discount.destroy
      flash[:success] = t "discount_deleted"
      redirect_to discounts_url
    else
      flash[:danger] = t "delete_fail"
    end
  end

  private

  def discount_params
    params.require(:discount).permit :discount
  end

  def find_discount_id
    @discount = Discount.find_by id: params[:id]

    return if @discount
    flash[:danger] = t "not_found"
    redirect_to root_url
  end
end
