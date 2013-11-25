class Mengajar < ActiveRecord::Base
  belongs_to :guru
  belongs_to :mapel
  has_many :jadwal
end
