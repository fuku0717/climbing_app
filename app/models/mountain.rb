class Mountain < ApplicationRecord
  belongs_to :user
  has_one_attached :image
  has_many :comments

  validates :mountain_name, presence: true
  validates :level, presence: true
  validates :point, presence: true
  validates :image, presence: true
end
