class Question < ApplicationRecord
  extend FriendlyId
  belongs_to :user
  has_many :question
  belongs_to :category

  friendly_id :category_id

  def answers
     @answers = Answer.where(question: self).count
  end

end
