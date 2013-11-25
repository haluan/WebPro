json.array!(@ekskuls) do |ekskul|
  json.extract! ekskul, :nama, :deskripsi, :guru_id
  json.url ekskul_url(ekskul, format: :json)
end
