#!/usr/bin/env ruby -wKU

require 'rubygems'
require File.expand_path(
    File.join(File.dirname(__FILE__), '..', 'lib', 'iconoclast'))
#require 'iconoclast'

#print Iconoclast.icons.join("\n")
print Iconoclast.icon_names.join("\n")
#print Iconoclast.version