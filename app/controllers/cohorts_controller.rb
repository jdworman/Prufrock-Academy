class CohortsController < ApplicationController
  def index
    @cohorts = Cohort.all
  end

  def edit
    @cohort= Cohort.find(params[:id])
  end

  def new
    @cohort= Cohort.new
  end

  def show
    @cohort= Cohort.find(params[:id])
  end

  def create
    @cohort = Cohort.new(params.require(:cohort).permit(:name, :start_date, :end_date, :student_id, :instructor_id))
  if @cohort.save
    redirect_to @cohort
  else
    errors = @cohort.errors.full_messages
    flash.now[:error] = errors
    render 'new'
  end
 end

  def update
    @cohort = Cohort.find(params[:id])

    if @cohort.update(params.require(:cohort).permit(:name, :start_date, :end_date, :student_id, :instructor_id))
      redirect_to @cohort
    else
      render 'edit'
    end
  end

  def destroy
  @cohortdestroy
  respond_to do |format|
    format.html { redirect_to cohort_url, notice: 'STUDENT HAS BEEN DELETED!' }
  end


  end

end
