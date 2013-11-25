json.array!(@profilsekolahs) do |profilsekolah|
  json.extract! profilsekolah, :title, :deskripsi
  json.url profilsekolah_url(profilsekolah, format: :json)
end
