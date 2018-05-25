class LoginsController < ApplicationController
    
    def new
        render :new
    end

    def create
        user = User.find_by(username: params[:username])
        if user and user.authenticate(params[:password])
            session[:user_id] = user.id
            redirect_to root_url, notice: "You have successfully logged in!"
        else
            flash.now[:alert] = "There is no user with that username and password."
            render :new
        end
    end

    def destroy
        session[:user_id] = nil
        redirect_to new_login_url, notice: "You have successfully logged out!"
    end
end

