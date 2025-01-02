module Devise
  module Strategies
    class CustomAuthenticatable < Base
      attr_reader :email,
                  :password,
                  :user

      def authenticate!
        return unless params[:user]

        extract_credentials
        find_user_by_email
        authenticate_with_local_password!
      end


      private

      def extract_credentials
        @email    = params[:user][:email]&.downcase
        @password = params[:user][:password]
      end

      def find_user_by_email
        @user = User.find_by(email: email)
      end

      def authenticate_with_local_password!
        return fail!(:invalid) unless user.present?
        return fail!(:invalid) unless user.valid_password?(password)

        success! user
      end
    end
  end
end
