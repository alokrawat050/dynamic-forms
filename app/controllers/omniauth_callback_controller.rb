class OmniauthCallbackController < ApplicationController
    def all
        #raise request.env["omniauth.auth"].yaml
        user = User.from_omniauth(request.env["omniauth.auth"])
        if user.persisted?
            flash[:success] = "Signed In"
            sign_in_and_redirect user
        else
            session["devise.user_attributes"] = user.attributes
            redirect_to new_user_registration_url
        end
    end
    
    alias_method :twitter, :all
end
