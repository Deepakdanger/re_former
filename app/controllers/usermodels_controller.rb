class UsermodelsController < ApplicationController
    def new
      @usermodel = Usermodel.new
    end

    def create
        @usermodel = Usermodel.new(usermodel_params)
      
        if @usermodel.save
          redirect_to new_usermodels_path
        else
          render :new
        end
    end

    def edit
      @usermodel = Usermodel.find(params[:id])
    end

    private

    def usermodel_params
      params.require(:usermodel).permit(:username, :email, :password)
    end
end
