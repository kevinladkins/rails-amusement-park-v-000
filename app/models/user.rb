class User < ActiveRecord::Base
  has_secure_password
  has_many :rides
  has_many :attractions, through: :rides
  validates :name, :password, :happiness, :nausea, :height, :tickets, presence: true
end
