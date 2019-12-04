class AuthRecord < ActiveRecord::Base
  self.abstract_class = true

  connects_to database: { writing: :auth, reading: :auth }
end
