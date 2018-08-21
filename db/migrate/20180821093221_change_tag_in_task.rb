class ChangeTagInTask < ActiveRecord::Migration[5.1]
  def change
    change_column :tasks, :tag, :integer
  end
end
