class Job < ActiveRecord::Base
  has_many :jobs_areas
  has_many :areas, through: :jobs_areas

  has_many :entries
  has_many :users, through: :entries
end
