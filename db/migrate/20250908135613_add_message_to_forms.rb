class AddMessageToForms < ActiveRecord::Migration[8.0]
  def change
    add_column :forms, :message, :string
  end
end
