class UsersController < ApplicationController
    def index
        @users = User.all
    end 

    def new
        @user = User.new
    end 

    def show
        @user=User.find(params[:id])
    end 

    def create
        @user = User.create(word_params)
        redirect_to user_path(@user)
    end 


    def destroy
        user = User.find(params[:id])
        user.destroy
        redirect_to users_path
    end 

    private

    def word_params
        params.require(:user).permit(:name, :age)
    end 

end
