class CreateKelas < ActiveRecord::Migration
  def change
    create_table :kelas do |t|
      t.string :nama
     

      t.timestamps
    end
  end
end
