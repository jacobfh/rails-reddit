class UsersController < ApplicationController

    def new
        @user = User.new
    end

    def create
        @user = User.new(user_params)
        if @user.save
            redirect_to new_login_path , notice: "Your username was created successfully. Please login."
        else
            render :new
        end
    end

    

    def user_params
        params.require(:user).permit(:username, :password)
    end

end
