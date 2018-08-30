class CoursesController < ApplicationController
  def index
    @courses = Course.all
  end

  def edit
    @courses = Course.find(params[:id])
  end

  def new
  end

  def show
    @courses = Course.find(params[:id]) 
  end

  def create
    @courses = Course.new(params.require(:courses).permit(:first_name, :last_name, :email, :age, :education))
 
    @courses.save
    redirect_to @courses
  end

  def update
    @courses = Course.find(params[:id])

    if @courses.update(params.require(:course).permit(:first_name, :last_name, :email, :age, :education))
      redirect_to @courses
    else
      render 'edit'
    end
  end

  def destroy
    @courses = Course.find(params[:id])
    @courses.destroy
    respond_to do |format|
      format.html { redirect_to @courses }
       
    end
  end

end

