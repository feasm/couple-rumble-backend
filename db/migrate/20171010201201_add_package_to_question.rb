class AddPackageToQuestion < ActiveRecord::Migration[5.1]
  def change
    add_reference :questions, :package, foreign_key: true
  end
end
