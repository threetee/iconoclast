require 'rubygems'
require 'test/unit'
require 'shoulda'
gem     'rails', '~>2.3.0'
gem     'mocha', '0.9.8'

require 'mocha'
require 'active_support'
require 'action_controller'
require 'action_controller/cgi_ext'
require 'action_controller/test_process'
require 'action_view/test_case'

$:.unshift File.dirname(__FILE__) + '/../lib'
require    File.dirname(__FILE__) + '/../init.rb'

RAILS_ROOT = '.'    unless defined? RAILS_ROOT
RAILS_ENV  = 'test' unless defined? RAILS_ENV

ActionController::Base.logger = nil
ActionController::Routing::Routes.reload rescue nil

#$LOAD_PATH.unshift(File.join(File.dirname(__FILE__), '..', 'lib'))
#$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'iconoclast'

class Test::Unit::TestCase
end
