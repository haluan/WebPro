json.array!(@berekskuls) do |berekskul|
  json.extract! berekskul, :tahun, :mahasiswa_id, :ekskul_id
  json.url berekskul_url(berekskul, format: :json)
end
