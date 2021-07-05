class AddValuesNullConstraint < ActiveRecord::Migration[6.1]
  def change
    change_column_null(:categories, :title, false)
    change_column_null(:tests, :title, false)
    change_column_null(:tests, :level, false)
    change_column_null(:questions, :question, false)
    change_column_null(:answers, :answer, false)
    change_column_null(:answers, :correct, false)
    change_column_null(:users, :name, false)
    change_column_null(:users, :email, false)
  end
end
