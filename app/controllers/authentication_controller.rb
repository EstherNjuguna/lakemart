class AuthenticationController < ApplicationController
    protect_from_forgery with: :null_session
    before_action :authenticate_user!
    def create_account
        user = User.create(create_params)
        if user.valid?
            appresponse(status_code: 201, message: "Succesfully created an account", body: user)
        else
            appresponse(status_code: 422, message: "Invalid input", body: user.errors.full_messages)
        end
    end
    def login
        user = User.find_by(email: params[:email])
        if user&. authenticate (params[:password])
           appresponse(status_code: 200, messge: "successfully logged in",body: user)
else
    appresponse(status_code: 401, message: "Invalid input", body: user)
end
end
    private
   
    def create_params
   params.permit(:name,:email,:password,:picture,:user_type)
    end
end
