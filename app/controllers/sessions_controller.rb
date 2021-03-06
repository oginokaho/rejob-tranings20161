class SessionsController < ApplicationController
  def new
  end


  def login
    if session[:user_id] == nil
    else
      redirect_to "/mypage?id=#{session[:user_id]}"
    end
  end


  def login_through
    user = User.find_by(name: params[:name])
    if user && user.pass == params[:pass]
      session[:user_id] = user.id
      redirect_to "/mypage?id=#{user.id}"
    else
      flash[:danger] = "ログインできませんでした。"
      redirect_to "/login"
    end
  end


  def mypage
    @entry = Entry.where(user_id: params[:id])
    @job = Job.where(id: @entry.pluck(:job_id))
    @user = User.find_by(id: params[:id])

    if session[:user_id] == params[:id].to_i
    else
      redirect_to "/login"
    end
  end


  def current_user
    @current_user ||= User.find_by(id: session[:user_id])
  end



  def logout
    #cookies.delete(:remember_token)
    session[:user_id] = nil
    redirect_to "/top"
  end


  def sighnup
    @user = User.find_by(id: params[:id])
  end


  def sighnup_through
    if
      user = User.create(name: params[:name], age: params[:age].to_i , sex: params[:sex], pass:params[:pass])
      redirect_to "/mypage?id=#{user.id}"
    else
      flash[:danger] = "登録できませんでした"
      redirect_to '/sighnup'
    end
  end
end
