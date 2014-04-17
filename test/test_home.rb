require 'helper'

class TestHome < Test::Unit::TestCase

  def test_working
    visit 'https://www.id.net'
    assert page.has_content?('id.net')
  end
end
