class CreateBerkelas < ActiveRecord::Migration
  def change
    create_table :berkelas do |t|
      t.string :tahun_ajaran
      t.integer :siswa_id
      t.integer :kela_id

      t.timestamps
    end
  end
end
