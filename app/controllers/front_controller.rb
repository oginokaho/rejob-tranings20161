class FrontController < ApplicationController
  # before_action  http_basic_authenticate_with name: "username", password: "password"
  def top

  end

  def search
    @job = Job.where(area: params[:area])
    @area = params[:area]
  end

  def job
  end
end
