class Contact < ActiveRecord::Base
  #has_and_belongs_to_many :accounts
  
  validates_presence_of :account, :source, :name
end
