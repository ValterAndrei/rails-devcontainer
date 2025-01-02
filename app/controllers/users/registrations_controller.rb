class Users::RegistrationsController < Devise::RegistrationsController
  respond_to :json

  private

  # Sign up
  def respond_with(current_user, _opts = {})
    if resource.persisted?
      render json: { user: current_user.as_json(except: :jti) }, status: :created
    else
      render json: { messages: resource.errors.full_messages }, status: :unprocessable_entity
    end
  end
end
