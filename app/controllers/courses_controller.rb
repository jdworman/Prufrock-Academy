class CoursesController < ApplicationController
  def index
    @courses = Course.all
  end

  def edit
    @courses = Course.find(params[:id])
  end

  def new
    @courses = Course.new
  end

  def show
    @courses = Course.find(params[:id])
  end

  def create
    @courses = Course.new(params.require(:course).permit(:name, :hours))
    if @courses.save
      redirect_to @courses
    else
      errors = @courses.errors.full_messages
      flash.now[:error] = errors
      render 'new'
    end
  end

    def update
      @courses = Course.find(params[:id])

      if @courses.update(params.require(:course).permit(:name, :hours))
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
