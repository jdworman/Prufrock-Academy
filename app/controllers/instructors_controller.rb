class InstructorsController < ApplicationController
  def index
    @instructors = Instructor.all
  end

  def edit
    @instructor = Instructor.find(params[:id])
  end

  def new
    @instructor = Instructor.new
  end

  def show
    @instructor = Instructor.find(params[:id])
  end

  def create
    @instructor = Instructor.new(params.require(:instructor).permit(:first_name, :last_name, :age, :education))
    if @instructor.save
      redirect_to @instructor
    else
      errors = @instructor.errors.full_messages
      flash.now[:error] = errors
      render 'new'
    end
 end

  def update
    @instructor = Instructor.find(params[:id])

    if @instructor.update(params.require(:instructor).permit(:first_name, :last_name, :email, :age, :education))
      redirect_to @instructor
    else
      render 'edit'
    end
  end

  def destroy
    @Instructor.destroy
    respond_to do |format|
      format.html { redirect_to instructor_url, notice: 'STUDENT HAS BEEN DELETED!' }
    end
  end
end
