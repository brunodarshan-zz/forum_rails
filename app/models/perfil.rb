require 'carrierwave/orm/activerecord'

class Perfil < ApplicationRecord
  belongs_to :user
  mount_uploader :avatar, AvatarUploader

  def to_s
    return self.username
  end
end
