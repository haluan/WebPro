class CreateAbesnsis < ActiveRecord::Migration
  def change
    create_table :abesnsis do |t|
      t.string :status
      t.integer :siswa_id
      t.integer :jadwal_id

      t.timestamps
    end
  end
end
