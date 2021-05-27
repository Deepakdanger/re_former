class UsermodelsController < ApplicationController
    def new
    end

    def create
        @user = Usermodel.new(username: params[:username], email: params[:email], password: params[:password])

        if @user.save
          redirect_to  new_usermodel_path
        else
          render :new
        end
    end
end
