class User < ApplicationRecord
    enum :type, [:Buyer, :seller, :admin]
    has_many :products, dependent: :destroy
    has_many :carts, dependent: :destroy
    has_many :reviews, dependent: :destroy
    has_many :orders, dependent: :destroy
    validates :email, uniqueness: true
end
