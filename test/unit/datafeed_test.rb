require 'test_helper'

class DatafeedTest < ActiveSupport::TestCase
  test "validates presence of name" do
    datafeeds = datafeeds(:Wind)
    datafeeds.name = nil
    assert ! datafeeds.valid?
    assert datafeeds.errors.on(:name)
  end
  
  test "validates presence of source" do
    datafeeds = datafeeds(:Wind)
    datafeeds.source = nil
    assert ! datafeeds.valid?
    assert datafeeds.errors.on(:source)
  end
    
  test "have a source" do
  	assert datafeeds(:Wind).source, "should have a source"
  end  
  
  test "has many issues" do
  	assert datafeeds(:Wind).issue, "should have issues"
  end
end
