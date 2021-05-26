class UsermodelsController < ApplicationController
    def new
        @usermodel = Usermodel.new
    end

    def create
    end
end
