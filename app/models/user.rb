class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

         validates :name, presence: true
         validates :profile, presence: true
         validates :prefecture, presence: true
         validates :history, presence: true
       
         has_many :mountains
         has_many :comments
end
