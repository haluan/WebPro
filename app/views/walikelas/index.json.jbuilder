json.array!(@walikelas) do |walikela|
  json.extract! walikela, :tahun_ajaran, :kelas_id, :guru_id
  json.url walikela_url(walikela, format: :json)
end
