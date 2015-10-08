class SearchesController < ApplicationController

	def index
	  @students = Student.search(params[:search]).paginate(:per_page => 2, :page => params[:page])
	end


end