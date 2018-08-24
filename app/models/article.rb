class Article < ApplicationRecord
  enum status: { Random: 0, Politic: 1, Business: 2, Economic: 3, Education: 4, Sport: 5, Technology: 6 }
  has_many :microposts, dependent: :destroy
  belongs_to :user
  
end
