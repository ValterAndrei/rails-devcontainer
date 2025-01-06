class Users::CurrentUserController < ApplicationController
  def index
    render json: user_data, status: :ok
  end

  private

  def user_data
    {
      user: current_user.as_json(except: %i[created_at updated_at jti]),
      token_issued_at:  token_time("iat"),
      token_expires_at: token_time("exp")
    }
  end

  def token_time(claim)
    timestamp = auth_token[claim]

    Time.at(timestamp).iso8601 if timestamp
  end

  def auth_token
    @auth_token ||= decode_auth_token
  end

  def decode_auth_token
    token = request.headers["Authorization"]&.split(" ")&.last

    JWT.decode(token, ENV["JWT_SECRET_KEY"]).first
  rescue JWT::DecodeError
    {}
  end
end
