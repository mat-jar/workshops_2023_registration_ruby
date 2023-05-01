class ValidatePassword

  def perform
    validate_password
  end

  private

  def initialize(password)
    @password = password
  end

  def validate_password
    /(?=.*\d)(?=.*[a-z])(?=.*[A-Z])(?=.*[!@#$%&*+=:;?<>])\A.{6,24}\z/.match?(@password) &&
    !/(.)\1{2}/.match?(@password)
  end

end
