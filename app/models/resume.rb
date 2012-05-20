class Resume < ActiveRecord::Base
	has_one :personal_detail
	accepts_nested_attributes_for :personal_detail
	attr_accessible :personal_detail_attributes #allow to assign multiple fields
	validates_associated :personal_detail

	has_many :education, :dependent => :destroy
	accepts_nested_attributes_for :education
	attr_accessible :education_attributes
end