class Guru < ActiveRecord::Base
  has_secure_password
  before_save :create_ingat_aku
  has_many :walikela
  has_many :mengajar
  
  private
    def create_ingat_aku
      self.ingat_aku = SecureRandom.urlsafe_base64
    end
end
