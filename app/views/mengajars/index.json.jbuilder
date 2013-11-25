json.array!(@mengajars) do |mengajar|
  json.extract! mengajar, :tahun_ajaran, :guru_id, :mapel_id
  json.url mengajar_url(mengajar, format: :json)
end
