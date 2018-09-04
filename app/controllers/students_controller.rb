class StudentsController < ApplicationController
  def index
    @students = Student.all
  end

  def edit
    @students = Student.find(params[:id])
  end

  def new
  end

  def show
    @students = Student.find(params[:id])
  end

  def create
    @students = Student.new(params.require(:students).permit(:first_name, :last_name, :age, :education))
  if @students.save
    redirect_to @students
  else
    errors = @students.errors.full_messages
    flash.now[:error] = errors
    render 'new'
  end
 end

  def update
    @students = Student.find(params[:id])

    if @students.update(params.require(:student).permit(:first_name, :last_name, :email, :age, :education))
      redirect_to @students
    else
      render 'edit'
    end
  end

  def destroy
    @students = Student.find(params[:id])
    @students.destroy
    respond_to do |format|
      format.html { redirect_to @students }

    end
  end

end
