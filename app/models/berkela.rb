class Berkela < ActiveRecord::Base
  belongs_to :siswa
  belongs_to :kelas
  has_many :nilaiakhir
end
