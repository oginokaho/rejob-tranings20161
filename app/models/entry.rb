class Entry < ActiveRecord::Base
  belongs_to :jobs
  belongs_to :users
end
