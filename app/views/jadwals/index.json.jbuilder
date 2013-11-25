json.array!(@jadwals) do |jadwal|
  json.extract! jadwal, :hari, :tanggal, :jam, :kelas_id, :mengajar_id
  json.url jadwal_url(jadwal, format: :json)
end
