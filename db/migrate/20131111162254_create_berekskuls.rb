class CreateBerekskuls < ActiveRecord::Migration
  def change
    create_table :berekskuls do |t|
      t.string :tahun
      t.integer :siswa_id
      t.integer :ekskul_id

      t.timestamps
    end
  end
end
