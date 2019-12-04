require "erdil/auth/engine"

module Erdil
  module Auth
    class Error < StandardError; end

    def self.identify!(token)
      identity = Identity.where(token: token).first

      if identity
        identity
      else
        throw Error.new
      end
    end
  end
end
