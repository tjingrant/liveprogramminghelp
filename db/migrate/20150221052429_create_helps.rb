class CreateHelps < ActiveRecord::Migration
  def change
    create_table :helps do |t|
      t.text :code
      t.text :description
      t.string :first_name
      t.string :last_name
      t.string :payment_status
      t.string :question_status
      t.string :email
      t.string :invoice

      t.timestamps null: false
    end
  end
end
