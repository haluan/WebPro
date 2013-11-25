json.array!(@kelas) do |kela|
  json.extract! kela, :nama, :walikelas_id
  json.url kela_url(kela, format: :json)
end
