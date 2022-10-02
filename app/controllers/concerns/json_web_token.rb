require 'jwt'

module JsonWebToken
  extend ActiveSupport::Concern
    SECRET_KEY = Rails.application.secret_key_base

    def jwt_encode(payload, exp = 7.days.from_now)
      #set expiration time for the token
      payload[:exp] = exp.to_i
      #encode user data with secret key
      JWT.encode(payload, SECRET_KEY)
    end 
    
    def jwt_decode(token)
      #decodes the token in order to access user data
      decoded_token = JWT.decode(token, SECRET_KEY)[0]
      HashWithIndifferentAccess.new decoded_token 
    end

end