class StudentsController < ApplicationController
  def index
    @student = Students.all
  end

  def edit
    @student = Student.find(params[:id])
  end

  def new
    @student = Student.find(params[:id])
  end

  def show
    @student = Student.find(params[:id]) 
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
 
  def list

      end
      
    end
  end

end
