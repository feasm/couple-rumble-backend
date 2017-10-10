class Challenge < ApplicationRecord
  belongs_to :package, optional: true

  validates :title, :presence => true
  validates :description, :presence => true
end
