class UsermodelsController < ApplicationController
    def new
      @usermodel = Usermodel.new
    end

    def create
        @usermodel = Usermodel.new(usermodel_params)
      
        if @usermodel.save
          redirect_to new_usermodel_path
        else
          render :new
        end
    end

    def edit
      @usermodel = Usermodel.find(params[:id])
    end

    def update
      @usermodel = Usermodel.find(params[:id])
    
      if @usermodel.update(usermodel_params)
        redirect_to edit_usermodel_path
      else
        render :edit
      end
  end

    private

    def usermodel_params
      params.require(:usermodel).permit(:username, :email, :password)
    end
end
