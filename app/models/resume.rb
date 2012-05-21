class Resume < ActiveRecord::Base
	has_one :personal_detail
	has_many :educations, :dependent => :destroy
	accepts_nested_attributes_for :personal_detail
	attr_accessible :personal_detail_attributes #allow to assign multiple fields
	validates_associated :personal_detail 

	accepts_nested_attributes_for :educations, :reject_if => lambda { |a| a[:education].blank? }, :allow_destroy => true
	attr_accessible :education_attributes
	validates_associated :education
end