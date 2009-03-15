class Contact < ActiveRecord::Base
  validates_presence_of :account, :source, :name
end
