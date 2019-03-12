class SearchController < ApplicationController
  before_action :get_q, only: [:search_by_full_text, :search_by_like]
  def index;end

  def search_by_full_text
    @tours = Tour.search(q) #// gọi tới scope search ta định nghĩa ở trên
    @found = @tours.count #// số bản ghi tìm được
    @all = Tour.count
    # // tổng số bản ghi
    render :search_result
  end

  def search_by_like
    @tours = Tour.where("tour_name LIKE ? OR city LIKE ? OR country LIKE ?",
      "%"+q+"%", "%"+q+"%", "%"+q+"%") #// tìm kiếm bằng LIKE
    @found = @tours.count
    @all = Tour.count
    render :search_result
  end

  private
  attr_reader :tours, :q

  def get_q
    @q = params[:q]
  end
end
