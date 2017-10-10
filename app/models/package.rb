class Package < ApplicationRecord
  has_many :questions
  has_many :challenges

  validates :name, :presence => true
  validates :theme, :presence => true
end
