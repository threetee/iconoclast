module Iconoclast
  
  module IconHelper
    
    # Insert an image tag with an icon with name equal to "name" param and
    # extension .png, with alt attribute and options.
    # Example:
    #    <%= icon :information, "Information icon", :border => 0 %>
    # will generate:
    #    <img src="../icons/information.png" alt="Information icon" border="0" />
    def icon(name, alt = nil, opts = {})
      print "in icon_tag method"
      # Set up some defaults
      opts[:border] ||= 0
      opts[:align] ||= "bottom"
      opts[:alt] ||= alt

      image_tag "icons/#{name}.png", opts
    end
  end
  
end