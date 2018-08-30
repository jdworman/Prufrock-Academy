class StudentsController < ApplicationController
  def index
    @students = Student.all
  end

  def edit
    @students = Student.find(params[:id])
  end

  def new
    @students = Student.find(params[:id])
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
    @students = Student.find(params[:id])
    @students.destroy
    respond_to do |format|
      format.html { redirect_to @students }
    end
  end

end
