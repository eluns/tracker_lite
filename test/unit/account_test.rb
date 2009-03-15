require 'test_helper'

class AccountTest < ActiveSupport::TestCase
   test "validates presence of name" do
    account = account(:Wind)
    account.name = nil
    assert ! account.valid?
    assert account.errors.on(:name)
  end
end
