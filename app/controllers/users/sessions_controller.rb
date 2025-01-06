class Users::SessionsController < Devise::SessionsController
  respond_to :json


  private

  # Login
  def respond_with(resource, _opts = {})
    render json: { user: resource.as_json(except: :jti) }, status: :ok

    # TODO: Verificar "Users::FailureApp#respond" para entender o que acontece
    # em caso de falha no login.
  end

  # Logout
  def respond_to_on_destroy
    if current_user
      render json: { message: "Logged out successfully." }, status: :ok
    else
      render json: { message: "Couldn't find an active session." }, status: :unauthorized
    end
  end
end
