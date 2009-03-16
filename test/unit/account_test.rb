require 'test_helper'

class AccountTest < ActiveSupport::TestCase
   test "validates presence of name" do
    accounts = accounts(:Wind)
    accounts.name = nil
    assert ! accounts.valid?
    assert accounts.errors.on(:name)
  end
  
#  test "has many datafeeds" do
#    assert accounts(:Wind).datafeeds, "should have datafeed association"
#  end
#  
#  test "has many sources" do
#  	assert accounts(:Wind).sources, "should have sources"
#  end  
#  
#  test "has many contacts" do
#  	assert accounts(:Wind).contacts, "should have contacts"
#  end 
  
end
