class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :mountain, presence: true
end
