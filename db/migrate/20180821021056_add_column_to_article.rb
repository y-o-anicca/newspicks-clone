class AddColumnToArticle < ActiveRecord::Migration[5.1]
  def change
    add_column :articles, :title, :string
    add_column :articles, :url, :string
    add_column :articles, :image, :string
    remove_column :articles, :content, :text 
  end



end
