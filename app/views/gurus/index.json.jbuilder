json.array!(@gurus) do |guru|
  json.extract! guru, :nip, :nama, :email, :password_digest, :alamat, :agama, :birthday, :birthplace, :ingat_aku
  json.url guru_url(guru, format: :json)
end
