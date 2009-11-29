# encoding: utf-8
require 'spec/expectations'
require 'cucumber/formatter/unicode'
require 'lib/iconoclast'

Before do
end

After do
end

When /I call the Iconoclast version method/ do
  @result = Iconoclast::version.chomp
end

Then /the result should be (.*)/ do |result|
  @result.should == result.to_s
end
