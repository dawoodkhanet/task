class ChangeIntegerLimitInYourTable < ActiveRecord::Migration[7.0]
  def change
    def change
      change_column :personals, :phone, :integer, limit: 8
    end
  end
end
