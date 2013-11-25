json.array!(@berkelas) do |berkela|
  json.extract! berkela, :tahun_ajaran, :mahasiswa_id, :kelas_id
  json.url berkela_url(berkela, format: :json)
end
