class PrincipalController < ApplicationController
  def index
     @principal = Principal.new
  end
  def new
  end
end
