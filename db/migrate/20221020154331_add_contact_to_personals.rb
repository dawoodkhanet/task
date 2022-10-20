class AddContactToPersonals < ActiveRecord::Migration[7.0]
  def change
    add_column :personals, :contact, :integer, limit: 8
  end
end
