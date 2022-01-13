class SessionsController < ApplicationController

    def new
    end
  
    def create
        #byebug
            user = User.find_by(email: params[:session][:email].downcase)
        if user && user.authenticate(params[:session][:password])
            session[:user_id] = user.id
            flash[:notice] = "Logged in successfully"
            redirect_to user
             # Log the user in and redirect to the user's show page.
        else
             # Create an error message.
            flash.now[:alert] = "There was something wrong with your login details" # Not quite right!
            render 'new'
        end
    end
  
    def destroy
        session[:user_id] = nil
        flash[:notice] = "Logged out"
        redirect_to root_path
    end
  
  end 