class Users::FailureApp < Devise::FailureApp
  def respond
    json_error_response
  end

  private

  # @see https://stackoverflow.com/a/35299895
  def json_error_response
    self.status        = 401
    self.content_type  = "application/json"
    self.response_body = { error: "Invalid Email or Password." }.to_json

    # Alternativa para traduzir a mensagem de erro.
    # self.response_body = { errors: [ { message: i18n_message } ] }.to_json
  end
end
