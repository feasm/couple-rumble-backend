class AddPackageToChallenge < ActiveRecord::Migration[5.1]
  def change
    add_reference :challenges, :package, foreign_key: true
  end
end
