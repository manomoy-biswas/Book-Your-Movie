class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.string :name, null:false,limit:255
      t.string :email,null:false,limit:255
      t.string :password,null:false,limit:255
      t.integer :mobileno,null:false,length:10

      t.timestamps
    end
  end
end
