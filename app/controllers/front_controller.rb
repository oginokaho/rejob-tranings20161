class FrontController < ApplicationController
  # before_action  http_basic_authenticate_with name: "username", password: "password"
  def top

  end

  def search
    @job = Job.where(area: params[:area])
          #モデル名.処理(カラム名: 内容)
    @area = params[:area]



  end

  def job
  end
end
