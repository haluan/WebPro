class CreateMapels < ActiveRecord::Migration
  def change
    create_table :mapels do |t|
      t.string :kode
      t.string :nama

      t.timestamps
    end
  end
end
