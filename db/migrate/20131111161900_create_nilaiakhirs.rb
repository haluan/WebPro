class CreateNilaiakhirs < ActiveRecord::Migration
  def change
    create_table :nilaiakhirs do |t|
      t.string :nilai
      t.integer :berkela_id
      t.integer :mapel_id

      t.timestamps
    end
  end
end
