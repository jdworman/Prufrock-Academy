class InstructorsController < ApplicationController
    def index
      @instructors = Instructor.all
    end

    def edit
      @instructors = Instructor.find(params[:id])
    end

    def new
    end

    def show
      @instructors = Instructor.find(params[:id])
    end

    def create
      @instructors = Instructor.new(params.require(:instructors).permit(:first_name, :last_name, :age, :salary, :education))
    if @instructors.save
      redirect_to @instructors
    else
      errors = @instructors.errors.full_messages
      flash.now[:error] = errors
      render 'new'
    end

    def update
      @instructors = Instructor.find(params[:id])

      if @instructors.update(params.require(:instructor).permit(:first_name, :last_name, :email, :age, :education))
        redirect_to @instructors
      else
        render 'edit'
      end
    end

    def destroy
      @instructors = Instructor.find(params[:id])
      @instructors.destroy
      respond_to do |format|
        format.html { redirect_to @instructors }

      end
    end

  end
end
