class FrontController < ApplicationController
  # before_action  http_basic_authenticate_with name: "username", password: "password"
  def top

  end

  def search
          #モデル名.処理(カラム名: 内容)
    if params[:area] == nil
      @job = Job.all
    else
      @job = Job.where(area: params[:area])
    end

  end

  def job
    @job = Job.find_by(id: params[:id])

  end
end
