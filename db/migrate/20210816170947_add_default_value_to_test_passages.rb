class AddDefaultValueToTestPassages < ActiveRecord::Migration[6.1]
  def up
    change_column_default(:test_passages, :correct_questions, 0)
  end

  def down
    change_column_default(:test_passages, :correct_questions, nil)
  end
end
