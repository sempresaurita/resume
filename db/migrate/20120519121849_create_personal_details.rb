class CreatePersonalDetails < ActiveRecord::Migration
  def up
  	create_table :personal_details do |t|
  		t.references :resume
  		t.string :firstname
  		t.string :secondname
  		t.string :address
  		t.string :country
  		t.integer :telephone 
  	end
  end

  def down
  	drop_table :personal_details
  end
end
