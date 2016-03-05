class CreateKeywords < ActiveRecord::Migration
  def change
    create_table :keywords do |t|
      t.string :body
      t.integer :user_id
      t.boolean :is_favorited, null: false, default: false
      t.boolean :is_retweeted, null: false, default: false

      t.timestamps null: false
    end
  end
end
