class Issue < ActiveRecord::Base
  has_many :datafeeds
  has_many :sources, :through => :datafeeds
  
  validates_presence_of :name, :datafeed, :status
end
