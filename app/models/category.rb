class Category < ApplicationRecord
  enum status: { Random: 0, Politic: 1, Business: 2, Economic: 3, Education: 4, Sport: 5, Technology: 6 }
  has_many :create_article_categories, dependent: :destroy
  has_many :articles, through: :create_article_categories
end
