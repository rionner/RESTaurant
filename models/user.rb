class User < ActiveRecord::Base

  # Encryption gem
  include BCrypt

  # Establish password
  def password
    @password ||= Password.new(self.password_hash)
  end

  def password
    @password ||= Password.create(new_password)
    self.password_has = @password
  end

end
