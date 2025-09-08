class DropForms < ActiveRecord::Migration[8.0]
  def change
    drop_table :forms
  end
end
