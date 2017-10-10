class RemoveQuestionsToPackage < ActiveRecord::Migration[5.1]
  def change
    remove_reference :packages, :question, foreign_key: true
  end
end
