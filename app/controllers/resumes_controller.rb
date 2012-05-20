class ResumesController < ApplicationController
  def new
  	@resume = Resume.new
  	@resume.build_personal_detail
    2.times {@resume.education.build}
  end

  def create
  	@resume = Resume.new(params[:resume]) 
  	if @resume.save
  		
  	else
  		render :new
  	end
  end

  def index #to see the list of resumes
  	@resumes = Resume.all
  end
end
