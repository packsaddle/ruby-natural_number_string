require_relative 'helper'

module NaturalNumberString
  class TestVersion < Test::Unit::TestCase
    test 'version' do
      assert do
        !::NaturalNumberString::VERSION.nil?
      end
    end
  end
end
