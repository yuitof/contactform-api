class AddEmailToForms < ActiveRecord::Migration[8.0]
  def change
    add_column :forms, :email, :string
  end
end
