class AuthenticationController < ApplicationController
    def create_account
    end
    def login
    end
    private
   
    def create_params
   params.permit(:name,:email,:password,:picture,:type)
    end
end
