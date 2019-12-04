require 'httparty'

module Auth
  class AuthError < StandardError; end

  def self.identify!(token)
    response = HTTParty.post('http://localhost:3000/validate', { body: { token: token } })

    unless response.code === 200
      throw AuthError.new
    end
  end
end
