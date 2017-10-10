class Question < ApplicationRecord
  validates :question, :presence => true
  validates :answer_mode, :presence => true
  validates :category, :presence => true
end
