class AddBloodTypeToUserProfs < ActiveRecord::Migration
  def change
    add_column :user_profs, :blood_type, :string
  end
end
