require_relative 'helper'

module NaturalNumberString
  class TestVersion < Test::Unit::TestCase
    test 'version' do
      assert do
        !::NaturalNumberString::VERSION.nil?
      end
    end
  end

  class TestNaturalNumber < Test::Unit::TestCase
    sub_test_case 'not natural number string' do
      test 'nil' do
        assert do
          ::NaturalNumberString.natural_number_string?(nil) == false
        end
      end
      test 'empty string' do
        assert do
          ::NaturalNumberString.natural_number_string?('') == false
        end
      end
      test 'integer' do
        assert do
          ::NaturalNumberString.natural_number_string?(1) == false
        end
      end
      test 'decimal string' do
        assert do
          ::NaturalNumberString.natural_number_string?('1.1') == false
        end
      end
      test 'negative number string' do
        assert do
          ::NaturalNumberString.natural_number_string?('-1') == false
        end
      end
    end
    sub_test_case 'natural number string' do
      test '1' do
        assert do
          ::NaturalNumberString.natural_number_string?('1') == true
        end
      end
      test '10000000000000000' do
        assert do
          ::NaturalNumberString.natural_number_string?('10000000000000000') == true
        end
      end
    end
  end
  class TestNaturalNumberInclude < Test::Unit::TestCase
    include NaturalNumberString
    sub_test_case 'not natural number string' do
      test 'nil' do
        assert do
          natural_number_string?(nil) == false
        end
      end
      test 'empty string' do
        assert do
          natural_number_string?('') == false
        end
      end
      test 'integer' do
        assert do
          natural_number_string?(1) == false
        end
      end
      test 'decimal string' do
        assert do
          natural_number_string?('1.1') == false
        end
      end
      test 'negative number string' do
        assert do
          natural_number_string?('-1') == false
        end
      end
    end
    sub_test_case 'natural number string' do
      test '1' do
        assert do
          natural_number_string?('1') == true
        end
      end
      test '10000000000000000' do
        assert do
          natural_number_string?('10000000000000000') == true
        end
      end
    end
  end
end
