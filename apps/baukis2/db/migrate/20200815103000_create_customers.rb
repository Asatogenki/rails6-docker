class CreateCustomers < ActiveRecord::Migration[6.0]
  def change
    create_table :customers do |t|
      t.string :email, null: false
      t.string :family_name, null: false
      t.string :given_name, null: false
      t.string :family_name_kana, null: false
      t.string :given_name_kana, null: false
      t.string :gender
      t.date :birthday
      t.string :hashed_password

      t.timestamps
    end
  end

  def up
    add_index :customers, "LOWER(email)", unique: true
    add_index :customers, [ :family_name_kana, :given_name_kana ]
  end

  def down
    add_index :customers, "LOWER(email)", unique: true
    add_index :customers, [ :family_name_kana, :given_name_kana ]
    remove_index :customers, [ :family_name_kana, :given_name_kana ]
    remove_index :customers, :email
  end
end
