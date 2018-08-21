class AddStatusToCategories < ActiveRecord::Migration[5.1]
  def change
    add_column :categories, :status, :integer, default: 0, comment: "カテゴリーをenumで分類"
    remove_column :categories, :name, :string
  end
end
