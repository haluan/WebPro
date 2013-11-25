json.array!(@admins) do |admin|
  json.extract! admin, :nip, :nama, :email, :password_digest, :alamat, :agama, :birthday, :birthplace, :ingat_aku
  json.url admin_url(admin, format: :json)
end
