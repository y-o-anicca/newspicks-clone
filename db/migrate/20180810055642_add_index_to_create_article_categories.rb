class AddIndexToCreateArticleCategories < ActiveRecord::Migration[5.1]
  def change
    add_index :create_article_categories, [:article_id, :category_id], unique: true
  end
end
