class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :mountain
  validates :content, presence: true
end
