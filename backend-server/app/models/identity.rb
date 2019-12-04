class Identity < AuthRecord

  before_save :assign_token

  private

  def assign_token
    self.token = SecureRandom.hex(125)
  end

end
