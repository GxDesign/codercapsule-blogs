class School < ActiveRecord::Base
	has_many :students
	has_many :teachers
	has_many :classes
	has_many :posts



	def short_desc 
		self.description[0..60]
	end

	
end
