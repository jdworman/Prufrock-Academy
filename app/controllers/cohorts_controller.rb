class CohortsController < ApplicationController
  def index
    @cohorts = Cohort.all
  end

  def edit
    @cohorts = Cohort.find(params[:id])
  end

  def new
    @cohorts = Cohort.new
  end

  def show
    @cohorts = Cohort.find(params[:id])
  end

  def create
    @cohorts = Cohort.new(params.require(:cohort).permit(:name, :start_date, :end_date, :student_id, :instructor_id))
    if @cohorts.save
      redirect_to @cohorts
    else
      errors = @cohorts.errors.full_messages
      flash.now[:error] = errors
      render 'new'
    end
  end

    def update
      @cohorts = Cohort.find(params[:id])

      if @cohorts.update(params.require(:cohort).permit(:name, :start_date, :end_date, :student_id, :instructor_id))
        redirect_to @cohorts
      else
        render 'edit'
      end
    end

    def destroy
      @cohorts = Cohort.find(params[:id])
      @cohorts.destroy
      respond_to do |format|
        format.html { redirect_to @cohorts }
      end
    end
end
