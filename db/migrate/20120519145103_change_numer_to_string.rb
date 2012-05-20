class ChangeNumerToString < ActiveRecord::Migration
  def up
  	change_column :personal_details, :telephone, :string
  end

  def down
  	change_column :personal_details, :telephone, :integer
  end
end
