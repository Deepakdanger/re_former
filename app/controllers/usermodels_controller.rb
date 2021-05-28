class UsermodelsController < ApplicationController
    def new
      @user = Usermodel.new  
    end

    def create
        @user = Usermodel.new(usermodel_params)
      
        if @user.save
          redirect_to new_usermodel_path
        else
          render :new
        end
    end

    private

    def usermodel_params
      params.require(:usermodel).permit(:username, :email, :password)
    end
end
