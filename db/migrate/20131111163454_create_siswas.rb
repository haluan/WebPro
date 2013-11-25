class CreateSiswas < ActiveRecord::Migration
  def change
    create_table :siswas do |t|
      t.string :nis
      t.string :nama
      t.string :email
      t.string :password_digest
      t.string :alamat
      t.string :agama
      t.string :birthday
      t.string :birthplace
      t.string :ingat_aku
      t.string :orangtua_id

      t.timestamps
    end
  end
end
