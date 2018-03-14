class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :confirm_email
      t.string :country
      t.string :city

      t.timestamps
    end
  end
end