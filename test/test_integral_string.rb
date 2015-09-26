require_relative 'helper'

module IntegralString
  class TestVersion < Test::Unit::TestCase
    test 'version' do
      assert do
        !::IntegralString::VERSION.nil?
      end
    end
  end
end
