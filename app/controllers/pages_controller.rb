class PagesController < ApplicationController
  def index
    render layout: false
    @user = User.new
  end

  def students; end

  def new; end

  def instructors; end

  def courses; end

  def cohorts; end
end
