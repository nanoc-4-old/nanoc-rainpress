# encoding: utf-8

require 'helper'

class Nanoc::Rainpress::FilterTest < Minitest::Test

  def test_filter
    # Create filter
    filter = ::Nanoc::Rainpress::Filter.new

    # Run filter
    result = filter.run("body { color: black; }")
    assert_equal("body{color:#000}", result)
  end

  def test_filter_with_options
    # Create filter
    filter = ::Nanoc::Rainpress::Filter.new

    # Run filter
    result = filter.run("body { color: #aabbcc; }", :colors => false)
    assert_equal("body{color:#aabbcc}", result)
  end

end
