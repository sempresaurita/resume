class CreateEducations < ActiveRecord::Migration
  def up
  	create_table :educations do |t|
  		t.references :resume
  		t.string :school_name
  		t.string :degree
  		t.string :dates_attended
  		t.string :type_of_study #high school, bachelor ..
  		t.string :field_of_study #design, history..
  		t.string :city
  		t.string :country 
  	end
  end

  def down
  	drop_table :educations
  end
end
