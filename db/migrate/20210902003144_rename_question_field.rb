class RenameQuestionField < ActiveRecord::Migration[6.1]
  def change
    rename_column :questions, :question, :body
  end
end
