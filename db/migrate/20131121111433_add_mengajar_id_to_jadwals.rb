class AddMengajarIdToJadwals < ActiveRecord::Migration
  def change
    add_column :jadwals, :mengajar_id, :integer
  end
end
