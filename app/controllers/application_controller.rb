class ApplicationController < ActionController::Base
    include ActionController::Cookies
rescue_from ActiveRecord::RecordInvalid, with: :render_record_invalid_response
rescue_from ActiveRecord::RecordNotFound, with: :render_record_not_found_response

private

def render_record_invalid_response(exception)
    render json: {errors: exception.record.errors.full_messages}, status: :unprocessable_entity
end

def render_record_not_found_response(exception)
    render json: {error: "#{exception.model} not found"}, status: :not_found
end
end
