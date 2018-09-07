class CoursesController < ApplicationController
  def index
  @courses = Course.all
end

def edit
  @course= Course.find(params[:id])
end

def new
  @course= Course.new
end

def show
  @course= Course.find(params[:id])
end


def create
  @course = Course.new(params.require(:course).permit(:name, :hours))
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

  if @course.update(params.require(:course).permit(:name, :hours))
    redirect_to @course
  else
    render 'edit'
  end
end

def destroy
  @course = Course.find(params[:id])
  @course.destroy
  respond_to do |format|
    format.html { redirect_to courses_path, notice: 'THE COURSE HAS BEEN DELETED!' }
end


end
end
