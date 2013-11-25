module MapelsHelper
  def guru
    @options = Guru.find(:all,
   :order => "nip").
   collect do |s|
      [s.nip+" - "+s.nama, s.id]
   end
  end
  def kelaser
    @options = Kela.find(:all,
   :order => "nama").
   collect do |s|
      [s.nama, s.id]
   end
  end
  def mapel
    @options = Mapel.find(:all,
   :order => "nama").
   collect do |s|
      [s.nama, s.id]
   end
  end
  def mengajar
    @options = Mengajar.find(:all).
   collect do |s|
      [s.guru.nama+" - "+s.mapel.nama, s.id]
   end
  end
end
