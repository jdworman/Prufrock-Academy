class StudentsController < ApplicationController
  def index
    @students = Student.all
  end

  def edit
    @student = Student.find(params[:id])
  end

  def new
    @student = Student.new
  end

  def show
    @student = Student.find(params[:id])
  end

  def create
    @student = Student.new(params.require(:student).permit(:first_name, :last_name, :age, :education))
    if @student.save
      redirect_to @student
    else
      errors = @student.errors.full_messages
      flash.now[:error] = errors
      render 'new'
    end
 end

  def update
    @student = Student.find(params[:id])

    if @student.update(params.require(:student).permit(:first_name, :last_name, :email, :age, :education))
      redirect_to @student
    else
      render 'edit'
    end
  end

  def destroy
    @student = Student.find(params[:id])
    @student.destroy
    respond_to do |format|
      format.html { redirect_to students_url, notice: 'STUDENT SUCCESSFULLY DELETED' }
      format.js { render layout: false }
    end
  end
end
