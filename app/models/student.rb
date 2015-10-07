class Student < ActiveRecord::Base
  belongs_to :school
  belongs_to :classroom
	has_many :posts
	delegate :teacher, to: :class
end
