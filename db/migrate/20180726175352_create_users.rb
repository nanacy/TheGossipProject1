class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.belongs_to :gossipings, index: true
      t.string :first_name
      t.string :last_name
      t.text :description
      t.string :email
      t.integer :age

      t.timestamps
    end
  end
end
