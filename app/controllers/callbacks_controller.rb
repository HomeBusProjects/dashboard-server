class CallbacksController < Devise::OmniauthCallbacksController
  def slack
    @user = User.from_omniauth_slack(request.env["omniauth.auth"])

#    if @user.persisted?
    if true
      sign_in_and_redirect @user, event: :authentication #this will throw if @user is not activated
      set_flash_message(:notice, :success, kind: "Slack") if is_navigational_format?
    else
      session["devise.slack_data"] = request.env["omniauth.auth"]
      redirect_to new_user_registration_url
    end
  end

  def failure
    redirect_to '/'
  end

#        @user = User.from_omniauth(request.env["omniauth.auth"])
#        sign_in_and_redirect @user
#    end
end
