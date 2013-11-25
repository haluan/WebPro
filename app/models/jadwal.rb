class Jadwal < ActiveRecord::Base
  belongs_to :kela
  belongs_to :mengajar
  has_many :abesnsi
end
