class CreateJadwals < ActiveRecord::Migration
  def change
    create_table :jadwals do |t|
      t.string :hari
      t.string :jam
      t.integer :kela_id

      t.timestamps
    end
  end
end
