class CreateEkskuls < ActiveRecord::Migration
  def change
    create_table :ekskuls do |t|
      t.string :nama
      t.string :deskripsi
      t.integer :guru_id

      t.timestamps
    end
  end
end
