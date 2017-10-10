class RemoveChallengesToPackage < ActiveRecord::Migration[5.1]
  def change
    remove_reference :packages, :challenge, foreign_key: true
  end
end
