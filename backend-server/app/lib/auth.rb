require 'httparty'

module Auth
  class AuthError < StandardError; end

  def self.identify!(token)
    identity = Identity.where(token: token).first

    if identity
      identity
    else
      throw AuthError.new
    end
  end
end
