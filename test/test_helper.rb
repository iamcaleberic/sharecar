ENV['RAILS_ENV'] ||= 'test'
require File.expand_path('../../config/environment', __FILE__)
require 'rails/test_help'
require "minitest/reporters"
Minitest::Reporters.use!

require 'devise'
require "paperclip/matchers"
class ActiveSupport::TestCase
  # Setup all fixtures in test/fixtures/*.yml for all tests in alphabetical order.
  extend Paperclip::Shoulda::Matchers
  fixtures :all
  # Add more helper methods to be used by all tests here...
end
