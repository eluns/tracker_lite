require 'test_helper'

class DatafeedTest < ActiveSupport::TestCase
  test "validates presence of name" do
    datafeed = datafeed(:Wind)
    datafeed.name = nil
    assert ! datafeed.valid?
    assert datafeed.errors.on(:name)
  end
  
  test "validates presence of source" do
    datafeed = datafeed(:Wind)
    datafeed.source = nil
    assert ! datafeed.valid?
    assert datafeed.errors.on(:source)
  end
end
