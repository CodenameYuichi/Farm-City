class Place < ActiveRecord::Base
  belongs_to :user
  has_many :images
  has_many :comments

  validates: :name, :width, :height, presence: true
end
