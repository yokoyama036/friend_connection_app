class User < ApplicationRecord
  belongs_to :user
  validates :name, presence: true
  validates :email, presence: true ,
                    format: { with: /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i }
end