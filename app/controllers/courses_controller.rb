class CoursesController < ApplicationController
  def index
  @courses = Course.all
end

def edit
  @course = Course.find(params[:id])
  @student = Student.all
  @names = []
  @student.each do |student|
    @names.push([student.first_name + " " + student.last_name, student.id])
  end
  p @names
end

def new
  @course = Course.new
end

def show
  @course = Course.find(params[:id])
end


def create
  p params
  @course = Course.new(params.require(:course).permit(:name, :hours, :instructor_id, :student_id))
if @course.save
  redirect_to @course
else
  errors = @course.errors.full_messages
  flash.now[:error] = errors
  render 'new'
end
end

def update
  @course = Course.find(params[:id])
  @student = Student.find(params[:students])

  if @course.update(params.require(:course).permit(:name, :hours, :instructor_id, :student_id))
    redirect_to @course
  else
    render 'edit'
  end
end

def destroy
  @course = Course.find(params[:id])
  @course.destroy
  respond_to do |format|
    format.html { redirect_to coursess_url, notice: 'COURSE SUCCESSFULLY DELETED' }
    format.js { render layout: false }
end


end
end
