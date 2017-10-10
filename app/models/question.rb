class Question < ApplicationRecord
  belongs_to :package, optional: true

  validates :question, :presence => true
  validates :answer_mode, :presence => true
  validates :category, :presence => true
end
