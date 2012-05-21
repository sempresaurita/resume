class ResumesController < ApplicationController
  def new
  	@resume = Resume.new
  	@resume.build_personal_detail
    2.times {@resume.educations.build} 
  end
  
  def show
    render = Resume(params[:resume]) 
  end
  
  def create
  	@resume = Resume.new(params[:resume]) 
  	if @resume.save
  		# render :show
  	else
  		render :new
  	end
  end

  def index #to see the list of resumes
  	@resumes = Resume.all
  end
end
