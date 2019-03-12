class Supports::Tour
  attr_reader :tour, :tours
# view object
  def initialize touur
    @tour = tour
  end

  def tours
    @tours ||= Tour.all
  end

  def comment
    @comment = Comment.new
  end

  def comments_tree
    @comments = @tour.comments
  end
end
