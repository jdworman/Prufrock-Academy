class CohortsController < ApplicationController
  def index
    @cohorts = Cohort.all
  end

  def edit
    @cohorts = Cohort.find(params[:id])
  end

  def new
  end

  def show
    @cohorts = Cohort.find(params[:id])
  end

  def create
    @cohorts = Cohort.new(params.require(:cohorts).permit(:first_name, :last_name, :age, :education))
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

    if @cohorts.update(params.require(:student).permit(:first_name, :last_name, :email, :age, :education))
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
