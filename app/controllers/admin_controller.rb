class AdminController < ApplicationController

  def admin
    @job = Job.all
    @job2 = Job.where(id: params[:id])
  end

  def admin_edit
    Job.create(job)

  end

  def admin_new
  end



end
