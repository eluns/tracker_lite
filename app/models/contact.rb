class Contact < ActiveRecord::Base
  
  validates_presence_of :account, :source, :name
  
 # define_index do
   # indexes name, :as =>:name
    #indexes name, :as =>:name, :sortable=>true, :sort_order=>"ascending"
 # end
  
end
