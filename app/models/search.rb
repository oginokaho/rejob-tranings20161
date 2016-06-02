class Search < ActiveRecord::Base
  #has_many :jobs_
  belongs_to :jobs
  belongs_to :areas
end
