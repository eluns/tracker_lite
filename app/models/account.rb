class Account < ActiveRecord::Base
#  has_many :datafeeds
#  has_many :sources, :through => :datafeeds
#  has_and_belongs_to_many :accounts

  validates_presence_of :name
end
