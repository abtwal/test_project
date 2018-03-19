class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.references :country, foreign_key: true
      t.references :city, foreign_key: true


      t.timestamps
    end
  end
end
