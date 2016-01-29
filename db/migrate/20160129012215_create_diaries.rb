class CreateDiaries < ActiveRecord::Migration
  def change
    create_table :diaries do |t|
      t.references :User_prof, index: true, foreign_key: true
      t.string :title
      t.text :content
      t.integer :user_prof_id

      t.timestamps null: false
    end
  end
end
