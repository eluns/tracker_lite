require 'test_helper'

class IssueTest < ActiveSupport::TestCase
  test "validates presence of name" do
    issue = issue(:Wind)
    issue.name = nil
    assert ! issue.valid?
    assert issue.errors.on(:name)
  end
  
  test "validates presence of datafeed" do
    issue = issue(:Wind)
    issue.datafeed = nil
    assert ! issue.valid?
    assert issue.errors.on(:datafeed)
  end
    
  test "validates presence of name" do
    issue = issue(:Wind)
    issue.status = nil
    assert ! issue.valid?
    assert issue.errors.on(:status)
  end
end
