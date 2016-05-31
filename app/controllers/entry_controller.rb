class EntryController < ApplicationController

  def entry
    Entry.create(user_id: session[:user_id], job_id: params[:id].to_i)
    #@job_id = session[:job_id]
  redirect_to "/mypage"
  end

  def entry_confirm
  end


  def entry_confirm_through
    Entry.create(job_id: params[:job_id], user_id: session[:user_id])
    if session[:user_id].present?
      redirect_to "mypage?id=#{session[:user_id]}"
    else
      flash[:danger] = "無料会員登録で、応募できます！"
      redirect_to "login"

    end

  end







end
