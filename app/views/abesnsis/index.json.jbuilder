json.array!(@abesnsis) do |abesnsi|
  json.extract! abesnsi, :status, :mahasiswa_id, :jadwal_id
  json.url abesnsi_url(abesnsi, format: :json)
end
