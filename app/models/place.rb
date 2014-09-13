class Place < ActiveRecord::Base
  belongs_to :user
  has_many :images
  has_many :comments

  validates :name, :width, :height, presence: true

  def newest_picture
    images.first ? images.first.picture.thumb.to_s : "http://placehold.it/180x120&size=1000&text=#{name.gsub(' ','+')}"
  end
end
