require 'test_helper'

class SourceTest < ActiveSupport::TestCase
  test "validates presence of name" do
    sources = sources(:Wind)
    sources.name = nil
    assert ! sources.valid?
    assert sources.errors.on(:name)
  end
  
  test "have a datafeeds" do
  	assert sources(:Wind).datafeeds, "should have a source"
  end  
  
  test "has many issues" do
  	assert sources(:Wind).issues, "should have issues"
  end

end
