class Student < ActiveRecord::Base
  belongs_to :school
  belongs_to :classroom
	has_many :posts
	delegate :teacher, to: :class
	def self.search(search)
	  if search
	    where('firstname LIKE ?', "%#{search}%")
	  else
	    self
	  end
	end
end
