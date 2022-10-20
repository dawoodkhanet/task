class RemovePhoneToPersonals < ActiveRecord::Migration[7.0]
  def change
    remove_column :personals, :phone, :integer

  end
end
