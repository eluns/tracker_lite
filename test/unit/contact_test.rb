require 'test_helper'

class ContactTest < ActiveSupport::TestCase
   test "validates presence of name" do
    contacts = contacts(:Wind)
    contacts.name = nil
    assert ! contacts.valid?
    assert contacts.errors.on(:name)
  end
  
   test "validates presence of account" do
    contacts = contacts(:Wind)
    contacts.account = nil
    assert ! contacts.valid?
    assert contacts.errors.on(:account)
  end
  
   test "validates presence of source" do
    contacts = contacts(:Wind)
    contacts.source = nil
    assert ! contacts.valid?
    assert contacts.errors.on(:source)
  end


end
