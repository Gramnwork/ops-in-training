class CreateDiaries < ActiveRecord::Migration
  def change
    create_table :diaries do |t|
      t.references :user_prof, index: true, foreign_key: true
      t.string :title
      t.text :content

      t.timestamps null: false
    end
  end
end
