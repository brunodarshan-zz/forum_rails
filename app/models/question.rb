class Question < ApplicationRecord
  belongs_to :user
  has_many :question
  belongs_to :category


  
end
