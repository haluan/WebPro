class CreateProfilsekolahs < ActiveRecord::Migration
  def change
    create_table :profilsekolahs do |t|
      t.string :title
      t.string :deskripsi

      t.timestamps
    end
  end
end
