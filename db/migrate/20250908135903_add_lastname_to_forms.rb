class AddLastnameToForms < ActiveRecord::Migration[8.0]
  def change
    add_column :forms, :lastname, :string
  end
end
