class CreateWalikelas < ActiveRecord::Migration
  def change
    create_table :walikelas do |t|
      t.string :tahun_ajaran
      t.integer :kela_id
      t.integer :guru_id

      t.timestamps
    end
  end
end
