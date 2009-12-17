require 'test_helper'
require 'iconoclast'

class IconHelperTest < ActionView::TestCase
  context "The iconoclast view helper" do
    tests Iconoclast::IconHelper

    setup do
      IconTag = {
        %(icon('zoom')) => %(<img align="bottom" alt="Zoom" border="0" src="/images/icons/famfamfam/silk/png/zoom.png" />),
        %(icon('zoom', 'alttext')) => %(<img align="bottom" alt="alttext" border="0" src="/images/icons/famfamfam/silk/png/zoom.png" />),
        %(icon('zoom', 'alttext', { :border => 1 })) => %(<img align="bottom" alt="alttext" border="1" src="/images/icons/famfamfam/silk/png/zoom.png" />),
      }
    end

    should "return the proper HTML" do
      IconTag.each do |method, tag|
        assert_dom_equal(tag, eval(method))
      end
    end
  end
end