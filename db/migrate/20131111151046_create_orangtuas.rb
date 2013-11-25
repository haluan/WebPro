class CreateOrangtuas < ActiveRecord::Migration
  def change
    create_table :orangtuas do |t|
      t.string :NIK
      t.string :nama
      t.string :email
      t.string :password_digest
      t.string :alamat
      t.string :pekerjaan
      t.string :agama
      t.string :birthday
      t.string :birthplace
      t.string :ingat_aku

      t.timestamps
    end
  end
end
