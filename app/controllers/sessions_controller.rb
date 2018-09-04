class SessionsController < ApplicationController
  
def new
end

    def create
        user = User.find_by(email: params[:session][:email].downcase)
        if user && user.authenticate(params[:session][:password])
          log_in(user)
          redirect_to root_path
        else
          msg = "Either your username or password you entered were incorrect!"
          p msg
          render 'new'
        end
    end


    def destroy
      session[:user_id] = nil
      log_out if logged_in?
      p 'Logged out successfully'
      redirect_to root_path
    end
  end
