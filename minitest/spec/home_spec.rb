require 'helper'

describe 'A useless blog', :type => :request do
  it "should at least work" do
    visit 'https://www.id.net'
    page.must_have_content('id.net')
  end
end
