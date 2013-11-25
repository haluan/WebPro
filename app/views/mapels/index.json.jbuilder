json.array!(@mapels) do |mapel|
  json.extract! mapel, :kode, :nama
  json.url mapel_url(mapel, format: :json)
end
