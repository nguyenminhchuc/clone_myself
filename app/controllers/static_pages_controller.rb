class StaticPagesController < ApplicationController
  def home
    @tour = Tour.all
  end

  def about; end
end
