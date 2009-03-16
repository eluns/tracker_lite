class Source < ActiveRecord::Base
  has_many :datafeeds
  has_many :issues, :through => :datafeeds
  
  validates_presence_of :name
end
