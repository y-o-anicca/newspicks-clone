class CreatePicks < ActiveRecord::Migration[5.1]
  def change
    create_table :picks do |t|
      t.integer :user_id, comment: "ユーザーとの関連付け"
      t.integer :article_id, comment: "記事との関連付け"

      t.timestamps
    end
    add_index :picks, :user_id
    add_index :picks, :article_id
    add_index :picks, [:user_id, :article_id], unique: true
  end
end
