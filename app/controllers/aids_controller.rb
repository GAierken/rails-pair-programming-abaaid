class AidsController < ApplicationController
    def new
        @aid=Aid.new
    end 

    def show
        @aid = Aid.find(params[:id])
    end 

    def create
        aid = Aid.create(aid_params)
        redirect_to user_path(aid.user)
    end 

    def destroy
        aid = Aid.find(params[:id])
        aid.destroy
        redirect_to user_path(aid.user.id)
    end 

    private

    def aid_params
        params.require(:aid).permit(:name, :content, :user_id)
    end
end
