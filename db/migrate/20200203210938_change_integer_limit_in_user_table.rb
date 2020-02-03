class ChangeIntegerLimitInUserTable < ActiveRecord::Migration[6.0]
  def change
    change_column :users, :mobileno, :bigint
  end
end
