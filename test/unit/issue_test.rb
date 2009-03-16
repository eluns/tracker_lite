require 'test_helper'

class IssueTest < ActiveSupport::TestCase
  test "validates presence of name" do
    issues = issues(:Wind)
    issues.name = nil
    assert ! issues.valid?
    assert issues.errors.on(:name)
  end
  
  test "validates presence of datafeed" do
    issues = issues(:Wind)
    issues.datafeed = nil
    assert ! issues.valid?
    assert issues.errors.on(:datafeed)
  end
    
  test "validates presence of status" do
    issues = issues(:Wind)
    issues.status = nil
    assert ! issues.valid?
    assert issues.errors.on(:status)
  end
  
  test "have a source" do
  	assert issues(:Wind).sources, "should have a source"
  end  
  
  test "has many datafeeds" do
  	assert issues(:Wind).datafeeds, "should have datafeeds"
  end

end
