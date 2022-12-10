class ApplicationController < ActionController::Base
    protect_from_forgery with: :null_session
    wrap_parameters format:[]
    def appresponse(status_code: 200, message: "success", body: nil)
    render json: {status: status_code, message: message, body: body}, status: status_code
    end
end
