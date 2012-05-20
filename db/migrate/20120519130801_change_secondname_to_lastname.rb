class ChangeSecondnameToLastname < ActiveRecord::Migration
  def up
  	rename_column :personal_details, :secondname, :lastname
  end

  def down
  	rename_column :personal_details, :lastname, :secondname
  end
end
