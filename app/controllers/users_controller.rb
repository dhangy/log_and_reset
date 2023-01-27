class UsersController < ApplicationController
    before_action :authenticate_user!
    before_action :set_user_context, :only => :show 

    def show
    end

    private
    
    def set_user_context
        @user = User.find(params[:id])
    end
end

