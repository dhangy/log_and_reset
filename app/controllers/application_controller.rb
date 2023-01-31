class ApplicationController < ActionController::Base
    protect_from_forgery with: :exception
    before_action :authenticate_user!
   
    before_action :configure_permitted_parameters, if: :devise_controller?
   
    protected
   
    def configure_permitted_parameters
        devise_parameter_sanitizer.permit(:sign_up) { |u| u.permit(:name, :email, :password)}
        devise_parameter_sanitizer.permit(:account_update) { |u| u.permit(
                                                                            :name, 
                                                                            :email, 
                                                                            :password, 
                                                                            :current_password,
                                                                            :beverage_feature,
                                                                            :cycle_feature,
                                                                            :food_feature,
                                                                            :excercise_feature,
                                                                            :media_feature,
                                                                            :mental_health_feature,
                                                                            :pain_level_feature,
                                                                            :relationship_feature,
                                                                            :sleep_feature
                                                                            )}
    end
end
