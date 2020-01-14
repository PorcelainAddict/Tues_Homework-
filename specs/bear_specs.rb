require('minitest/autorun')
require('minitest/reporters')
require_relative('../river.rb')
require_relative('../fish.rb')
require_relative('../bear.rb')


Minitest::Reporters.use!
Minitest::Reporters::SpecReporter.new

class TestBear < MiniTest::Test

  def setup
     @bear = Bear.new("Cynthia-Delaney", "Grizzly")


  end

end
