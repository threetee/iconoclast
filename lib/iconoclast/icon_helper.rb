module Iconoclast
  
  module IconHelper
    
    # Insert an image tag with an icon with name equal to "name" param and
    # extension .png, with alt attribute and options.
    # Example:
    #    <%= icon :information, "Information icon", :border => 0 %>
    # will generate:
    #    <img src="../icons/information.png" alt="Information icon" border="0" />
    def icon(name, alt = nil, opts = {})
      # Set up some defaults
      collection = 'famfamfam'
      family = 'silk'
      format = 'png'
      
      # Replace the defaults if specified
      ['collection', 'family', 'format'].each do |var|
        eval("#{var} = opts[:#{var}] unless opts[:#{var}].nil?")
        eval("opts.delete #{var}")
      end
      
      opts[:border] ||= 0
      opts[:align] ||= "bottom"
      opts[:alt] ||= alt

      image_tag "icons/#{collection}/#{family}/#{format}/#{name}.png", opts
    end
  end
  
end