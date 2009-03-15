require 'test_helper'

class ContactTest < ActiveSupport::TestCase
   test "validates presence of name" do
    contact = contact(:Wind)
    contact.name = nil
    assert ! contact.valid?
    assert contact.errors.on(:name)
  end
  
   test "validates presence of account" do
    contact = contact(:Wind)
    contact.account = nil
    assert ! contact.valid?
    assert contact.errors.on(:account)
  end
  
   test "validates presence of source" do
    contact = contact(:Wind)
    contact.source = nil
    assert ! contact.valid?
    assert contact.errors.on(:source)
  end
end
