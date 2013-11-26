class Admin < ActiveRecord::Base
  has_secure_password
  before_save :create_ingat_aku
  validates :password, length: { in: 6..128 },on: :update, allow_blank: true
  private
    def create_ingat_aku
      self.ingat_aku = SecureRandom.urlsafe_base64
    end
end
