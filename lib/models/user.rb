class User < Sequel::Model
  attr_writer :password
  def before_save
    self.encrypted_password = Digest::SHA1.hexdigest @password
    super
  end
end
