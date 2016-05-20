class Search < ActiveRecord::Base
  #has_many :jobs_
  has_many :jobs_areas
  has_many :areas, through: :jobs_areas
end
