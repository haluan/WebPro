class SessionsController < ApplicationController
  def new
  end
  def create
    
    user = Guru.find_by_email(params[:sessions][:email])
  if user==nil
    user = Orangtua.find_by_email(params[:sessions][:email])
  end
  if user==nil
    user = Siswa.find_by_email(params[:sessions][:email])
  end
  if user==nil
    user = Admin.find_by_email(params[:sessions][:email])
  end
    if user && user.authenticate(params[:sessions][:password])
      #sign in  berhasil
      flash[:success] = 'selamat datang'
      sign_in user
      redirect_to root_path
    else
      #sig in gagal
      flash[:error] = 'akses ditolak'
      render 'new'  
    end
  end
  def destroy
    sign_out    
    redirect_to root_path
  end
end
