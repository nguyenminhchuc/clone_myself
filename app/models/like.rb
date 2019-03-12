class Like < ApplicationRecord
  belongs_to :likeable, polymorphic: true

  def already_liked?
    Like.where(user_id: current_user.id, tour_id:
    params[:tour_id]).exists?
  end
end
