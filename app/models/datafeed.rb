class Datafeed < ActiveRecord::Base
  validates_presence_of :name, :source
end
