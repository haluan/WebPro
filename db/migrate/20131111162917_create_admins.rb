class CreateAdmins < ActiveRecord::Migration
  def change
    create_table :admins do |t|
      t.string :nip
      t.string :nama
      t.string :email
      t.string :password_digest
      t.string :alamat
      t.string :agama
      t.string :birthday
      t.string :birthplace
      t.string :ingat_aku

      t.timestamps
    end
  end
end
