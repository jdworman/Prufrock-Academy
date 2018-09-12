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
    @cohort.students << Student.find(params[:save][:student_ids]) if params[:save]

  end

  def create
    @cohort = Cohort.new(params.require(:cohort).permit(:name, :start_date, :end_date,  :instructor_id, :student_id, :course_id))
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

    if @cohort.update(params.require(:cohort).permit(:name, :start_date, :end_date,  :instructor_id,  :student_id, :course))
      redirect_to @cohort
    else
      render 'edit'
    end
  end

  def destroy
    @cohort = Cohort.find(params[:id])
    @cohort.destroy
    respond_to do |format|
      format.html { redirect_to cohorts_url, notice: 'COHORT SUCCESSFULLY DELETED' }
      format.js { render layout: false }
  end


  end

end
