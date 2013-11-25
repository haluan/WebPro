module SessionsHelper
  def sign_in(user)
    cookies.permanent[:ingat_aku] = user.ingat_aku
    self.user_sekarang = user
  end
  
  def signed_in?
    !user_sekarang.nil?
  end
  
  def user_sekarang=(user)
    @user_sekarang = user
  end
  
  def user_sekarang
    @user_sekarang ||= Siswa.find_by_ingat_aku(cookies[:ingat_aku])
  if @user_sekarang==nil
    @user_sekarang ||= Guru.find_by_ingat_aku(cookies[:ingat_aku])
  end
  if @user_sekarang==nil
    @user_sekarang ||= Orangtua.find_by_ingat_aku(cookies[:ingat_aku])
  end
  if @user_sekarang==nil
    @user_sekarang ||= Admin.find_by_ingat_aku(cookies[:ingat_aku])
  end
  @user_final=@user_sekarang
  end
  
  def objek_aktif
    @user_sekarang ||= Siswa.find_by_ingat_aku(cookies[:ingat_aku])
    objek=Siswa
  if @user_sekarang==nil
    @user_sekarang ||= Guru.find_by_ingat_aku(cookies[:ingat_aku])
    objek=Guru
  end
  if @user_sekarang==nil
    @user_sekarang ||= Orangtua.find_by_ingat_aku(cookies[:ingat_aku])
    objek=Orangtua
  end
  if @user_sekarang==nil
    @user_sekarang ||= Admin.find_by_ingat_aku(cookies[:ingat_aku])
    objek=Admin
  end
  if @user_sekarang==nil
    objek=nil
  end
  @objek_final=objek
  end
  
  def sign_out
    user_sekarang = nil
    cookies.delete(:ingat_aku)
  end
end
