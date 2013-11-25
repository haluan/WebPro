json.array!(@siswas) do |siswa|
  json.extract! siswa, :nis, :nama, :email, :password_digest, :alamat, :agama, :birthday, :birthplace, :ingat_aku, :orangtua_id
  json.url siswa_url(siswa, format: :json)
end
