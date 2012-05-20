class CreateResumes < ActiveRecord::Migration
  def up
  	create_table :resumes do |t|
  	end
  end

  def down
  	drop_table :resumes
  end
end
