require 'carrierwave/orm/activerecord'

class Perfil < ApplicationRecord
  belongs_to :user
  mount_uploader :avatar, AvatarUploader

  def to_s
    return self.username
  end

  def has_avatar?
    self.avatar.length > 0 ? true : false
  end
end
