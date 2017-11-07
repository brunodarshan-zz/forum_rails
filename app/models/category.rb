class Category < ApplicationRecord
  extend FriendlyId

  has_many :question

  friendly_id :name, use: :slugged
end
