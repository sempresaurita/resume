class Education < ActiveRecord::Base
	belongs_to :resume
	attr_accessible :school_name, :degree, :dates_attended, :type_of_study, :field_of_study, :city, :country
end