class PersonalDetail < ActiveRecord::Base
	belongs_to :resume
	attr_accessible :firstname, :lastname, :address, :country, :telephone

	validates_presence_of :firstname
	validates_length_of :firstname, :minimum => 2, :maximum => 40

	validates_format_of :telephone, :with => /\d{8}/
end