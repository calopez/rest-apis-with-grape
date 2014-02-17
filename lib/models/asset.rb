class Asset < Sequel::Model
  mount_uploader :file, AssetUploader
  many_to_one :user

  def can_be_downloaded_by? receiver
    receiver.nil? || self.receiver == receiver
  end
end
