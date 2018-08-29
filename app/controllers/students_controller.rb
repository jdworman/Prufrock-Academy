class StudentsController < ApplicationController
  def index
  end

  def edit
  end

  def new
  end

  def show
    @students = Student.find(params[:id]) 
  end

  def create
    @students = Student.new(params.require(:students).permit(:first_name, :last_name, :email, :age, :education))
 
    @students.save
    redirect_to @students
  end

  def destroy
    @student = Student.find(params[:id])
    @student.destroy
    respond_to do |format|
      
        format.html { redirect_to @student }
 
      
    end
  end

end
