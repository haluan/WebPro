json.array!(@nilaiakhirs) do |nilaiakhir|
  json.extract! nilaiakhir, :nilai, :berkelas_id, :mapel_id
  json.url nilaiakhir_url(nilaiakhir, format: :json)
end
