class User < Sequel::Model
  attr_writer :password
  one_to_many :assets

  def before_save
    self.encrypted_password = Digest::SHA1.hexdigest @password
    super
  end

  def authorized? password
    Digest::SHA1.hexdigest(password) == self.encrypted_password
  end
end
