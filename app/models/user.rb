class User < ActiveRecord::Base
  has_many :entries
  has_many :jobs, through: :entries
end
