class SessionsController < ApplicationController
  def new
  end

  def login
  end


  def login_through
    user = UserLogin.find_by(name: params[:name])
    if user && user.pass == params[:pass]
    #  fail
      session[:userlogin_id] = user.id
      redirect_to "/mypage?id=#{user.id}"
    else
      flash[:danger] = "ログインできませんでした。"
      redirect_to "/login"
    end
  end

  def mypage
    @user = UserLogin.find(session[:userlogin_id])
  end


  def current_user
    @current_user ||= User.find_by(id: session[:user_id])
  end



  def logout
    cookies.delete(:remember_token)
    redirect_to "/top"
  end
end
