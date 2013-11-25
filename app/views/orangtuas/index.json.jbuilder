json.array!(@orangtuas) do |orangtua|
  json.extract! orangtua, :NIK, :nama, :email, :password_digest, :alamat, :pekerjaan, :agama, :birthday, :birthplace, :ingat_aku
  json.url orangtua_url(orangtua, format: :json)
end
