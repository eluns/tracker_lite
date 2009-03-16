class Datafeed < ActiveRecord::Base
  belongs_to :source
  belongs_to :issue

  validates_presence_of :name, :source
end
