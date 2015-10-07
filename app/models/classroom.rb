class Classroom < ActiveRecord::Base
	belongs_to :school
	has_many :students
	has_many :assignments
	has_many :teachers, through: :assignments
end
