class Category < ApplicationRecord
  has_many :create_article_categories, dependent: :destroy
  has_many :articles, through: :create_article_categories
  validates_uniqueness_of :name, case_sensitive: false
end
