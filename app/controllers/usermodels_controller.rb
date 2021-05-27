class UsermodelsController < ApplicationController
    def new
    end

    def create
        @user = Usermodel.new(user_params)
      
        if @user.save
          redirect_to new_usermodels_path
        else
          render :new
        end
      end

  private

  def user_params
    params.require(:usermodels).permit(:username, :email, :password)
  end
end
