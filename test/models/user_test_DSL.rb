require 'test_helper'

describe User do

  def valid_params 
    { client_id: "John Doe", email: "john@example.com" }
  end

  it "is valid with valid params"
  user = User.new valid_params

  user.must_be :valid?, # Must create with valid params

  it "is invalid without an email"
  # Delete email before user let is called
  user_params.delete :email

  user.wont_be :valid? #Must not be valid without email
  user.errors[:email].must_be :present? # Must have error for missing email
  end
end