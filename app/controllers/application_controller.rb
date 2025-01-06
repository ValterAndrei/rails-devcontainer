class ApplicationController < ActionController::API
  before_action :authenticate_user!

  rescue_from ActiveRecord::RecordNotFound, with: :record_not_found


  private

  def record_not_found
    render json: { message: "Record not found." }, status: :not_found
  end
end
