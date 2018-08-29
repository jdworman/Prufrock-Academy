class InstructorsController < ApplicationController
  def index
  end

  def edit
  end

  def new
  end

  def show
    @instructors = Instructor.find(params[:id]) 
  end

  def create
    @instructors = Student.new(params.require(:instructors).permit(:first_name, :last_name, :email, :age, :education, :education))
 
    @instructors.save
    redirect_to @instructors
  end

  def destroy
    @instructors = instructors.find(params[:id])
    @student.destroy
    respond_to do |format|
      
        format.html { redirect_to @instructors }
 
      
    end
  end

end
