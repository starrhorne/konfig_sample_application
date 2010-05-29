ENV["RAILS_ENV"] = "test"
require File.expand_path('../../config/environment', __FILE__)
require 'rails/test_help'
require 'shoulda'

class ActiveSupport::TestCase
  
  def konfig_path(file = nil)
    file ? File.join(Konfig.path, file) : Konfig.path
  end

end
