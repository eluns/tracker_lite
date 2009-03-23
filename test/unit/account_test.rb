require 'test_helper'

class AccountTest < ActiveSupport::TestCase
   test "validates presence of name" do
    accounts = accounts(:Wind)
    accounts.name = nil
    assert ! accounts.valid?
    assert accounts.errors.on(:name)
  end
  
end
