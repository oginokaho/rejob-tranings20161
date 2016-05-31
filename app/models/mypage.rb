class Mypage < ActiveRecord::Base
  has many :jobs
  has many :entry_jobs, through: :jobs
end
