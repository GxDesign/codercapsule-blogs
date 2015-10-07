class School < ActiveRecord::Base
	has_many :students
	has_many :teachers
	has_many :classes
	has_many :posts
end
