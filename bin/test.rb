#!/usr/bin/env ruby

require 'rubygems'
require File.expand_path(
    File.join(File.dirname(__FILE__), '..', 'lib', 'iconoclast'))
#require 'iconoclast'

Main do
  
  run do
    #print Iconoclast.icons.join("\n")
    #print Iconoclast.icon_names.join("\n")
    #print Iconoclast.version
    print Iconoclast.libpath + "\n"
    print Iconoclast.path + "\n"
    
    print Iconoclast::IconHelper::icon("test")
#    Iconoclast::IconHelper.icon("test")
  end
end