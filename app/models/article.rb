class Article < ApplicationRecord
  has_many :create_article_categories, dependent: :destroy
  has_many :categories, through: :create_article_categories
  has_many :picks, dependent: :destroy
  has_many :users, through: :picks 

  #(name)カテゴリーに紐づいた投稿を返す
  def self.categorized_as(name)
    Category.find_by(name: params[:name]).articles
  end

  # カテゴリの名前の配列を返す
  def category_list
    categories.map(&:name).join.(",")
  end

end
