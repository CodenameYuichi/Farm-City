class Place < ActiveRecord::Base
  belongs_to :user
  has_many :images
  has_many :comments

  validates :name, :width, :height, presence: true


  def near?(user)
    radius = (user.radius || 0)*0.009
    include_width?(user.width,radius) && include_height?(user.height,radius)
    binding.pry
  end

  private

  def include_width?(user_width, range)
    ((user_width-range)..(user_width+range)).include?(width)
  end

  def include_height?(user_height, range)
    ((user_height-range)..(user_height+range)).include?(height)
  end
end
