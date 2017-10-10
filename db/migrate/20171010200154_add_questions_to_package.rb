class AddQuestionsToPackage < ActiveRecord::Migration[5.1]
  def change
    add_reference :packages, :question, foreign_key: true
  end
end
