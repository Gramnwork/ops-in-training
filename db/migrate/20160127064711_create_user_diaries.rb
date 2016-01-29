class CreateUserDiaries < ActiveRecord::Migration
  def change
    create_table :user_diaries do |t|
      t.integer :user_id
      t.string :diary_title
      t.string :diary_content

      t.timestamps null: false
    end
  end
end
