require_relative 'helper'

module NaturalNumberString
  class TestPositiveInteger < Test::Unit::TestCase
    sub_test_case 'not positive integer string' do
      test 'nil' do
        assert do
          ::NaturalNumberString.positive_integer_string?(nil) == false
        end
      end
      test 'empty string' do
        assert do
          ::NaturalNumberString.positive_integer_string?('') == false
        end
      end
      test 'integer' do
        assert do
          ::NaturalNumberString.positive_integer_string?(1) == false
        end
      end
      test 'decimal string' do
        assert do
          ::NaturalNumberString.positive_integer_string?('1.1') == false
        end
      end
      test 'negative number string' do
        assert do
          ::NaturalNumberString.positive_integer_string?('-1') == false
        end
      end
      test '0' do
        assert do
          ::NaturalNumberString.positive_integer_string?('0') == false
        end
      end
    end
    sub_test_case 'positive integer string' do
      test '1' do
        assert do
          ::NaturalNumberString.positive_integer_string?('1') == true
        end
      end
      test '10000000000000000' do
        assert do
          ::NaturalNumberString
            .positive_integer_string?('10000000000000000') == true
        end
      end
    end
  end
  class TestPositiveIntegerInclude < Test::Unit::TestCase
    include NaturalNumberString
    sub_test_case 'not positive integer string' do
      test 'nil' do
        assert do
          positive_integer_string?(nil) == false
        end
      end
      test 'empty string' do
        assert do
          positive_integer_string?('') == false
        end
      end
      test 'integer' do
        assert do
          positive_integer_string?(1) == false
        end
      end
      test 'decimal string' do
        assert do
          positive_integer_string?('1.1') == false
        end
      end
      test 'negative number string' do
        assert do
          positive_integer_string?('-1') == false
        end
      end
      test '0' do
        assert do
          positive_integer_string?('0') == false
        end
      end
    end
    sub_test_case 'positive integer string' do
      test '1' do
        assert do
          positive_integer_string?('1') == true
        end
      end
      test '10000000000000000' do
        assert do
          positive_integer_string?('10000000000000000') == true
        end
      end
    end
  end
end
