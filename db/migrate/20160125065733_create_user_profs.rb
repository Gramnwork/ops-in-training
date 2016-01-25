class CreateUserProfs < ActiveRecord::Migration
  def change
    create_table :user_profs do |t|
      t.string :name
      t.integer :age
      t.boolean :male

      t.timestamps null: false
    end
  end
end
