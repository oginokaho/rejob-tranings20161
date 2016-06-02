class Job < ActiveRecord::Base
  has_many :searchies
  has_many :areas, through: :searchies

  has_many :entries
  has_many :users, through: :entries
end
