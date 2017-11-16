class Question < ApplicationRecord
  extend FriendlyId
  belongs_to :user
  has_many :question
  belongs_to :category

  friendly_id :category_id

end
