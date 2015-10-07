class Teacher < ActiveRecord::Base
	belongs_to :school
	has_many :assignments
	has_many :classes, through: :assignments
	has_many :students, through: :class
end
