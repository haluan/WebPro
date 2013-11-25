class Kela < ActiveRecord::Base
  belongs_to :walikela
  has_many :berkela
  has_many :jadwal
end
