class WelcomeController < ApplicationController

    def home
        @user = current_user
    end

    def landing
    end
end
