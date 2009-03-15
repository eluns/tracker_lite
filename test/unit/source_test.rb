require 'test_helper'

class SourceTest < ActiveSupport::TestCase
  test "validates presence of name" do
    source = source(:Wind)
    source.name = nil
    assert ! source.valid?
    assert source.errors.on(:name)
  end
end
