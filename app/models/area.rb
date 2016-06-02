class Area < ActiveRecord::Base
  has_many :jobs
  has_many :searchies through: :jobs
end
