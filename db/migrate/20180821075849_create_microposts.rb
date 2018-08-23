class CreateMicroposts < ActiveRecord::Migration[5.1]
  def change
    create_table :microposts do |t|
      t.text :content, comment: "コメント内容"
      t.integer :user_id, comment: "ユーザー関連付け"
      t.integer :article_id, comment: "記事関連付け"

      t.timestamps
    end
    add_index :microposts, :user_id
    add_index :microposts, :article_id
  end
end
