class Issue < ActiveRecord::Base
  validates_presence_of :name, :datafeed, :status
end
