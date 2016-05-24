class AdminController < ApplicationController

  def admin
    @job = Job.all
    @job2 = Job.where(id: params[:id])
  end


  def update
    @job = Job.find_by(id: params[:id])

  end


  def through
    @job = Job.find_by(id: params[:id])
    if
      @job.update(title: params[:title],
        description: params[:description],
        area: params[:area])
      redirect_to '/admin'
    end

  end


  def new
    @job = Job.find_by(id: params[:id]).destroy
    redirect_to '/admin'
  end



  def destroy_through
    if
      @job = Job.find_by(id: params[:id]).destroy
      redirect_to '/admin_edit'
    else
      redirect_to '/admin'
    end
  end

end
