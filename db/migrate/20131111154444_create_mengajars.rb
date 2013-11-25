class CreateMengajars < ActiveRecord::Migration
  def change
    create_table :mengajars do |t|
      t.string :tahun_ajaran
      t.integer :guru_id
      t.integer :mapel_id

      t.timestamps
    end
  end
end
