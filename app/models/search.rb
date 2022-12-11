class Search < ApplicationRecord
    scope :order_by_count, -> { order(count: :desc) }
    has_many :products
    validates :search_term, presence: true
    
  end