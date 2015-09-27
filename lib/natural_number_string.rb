require 'natural_number_string/version'

# Check the value is string of natural number.
module NaturalNumberString
  module_function

  # Check the value is string of positive integer or zero
  #
  # @example Use include
  #   class Example
  #     include NaturalNumberString
  #     def example
  #       zero_or_positive_integer_string?('1') #=> true
  #       zero_or_positive_integer_string?('100000000000000') #=> true
  #       zero_or_positive_integer_string?('0') #=> true
  #
  #       zero_or_positive_integer_string?(nil) #=> false
  #       zero_or_positive_integer_string?('') #=> false
  #       zero_or_positive_integer_string?(1) #=> false
  #       zero_or_positive_integer_string?('1.1') #=> false
  #       zero_or_positive_integer_string?('-1') #=> false
  #     end
  #   end
  #
  # @example Use direct
  #   NaturalNumberString.zero_or_positive_integer_string?('1') #=> true
  #   NaturalNumberString
  #     .zero_or_positive_integer_string?('100000000000') #=> true
  #   NaturalNumberString.zero_or_positive_integer_string?('0') #=> true
  #
  #   NaturalNumberString.zero_or_positive_integer_string?(nil) #=> false
  #   NaturalNumberString.zero_or_positive_integer_string?('') #=> false
  #   NaturalNumberString.zero_or_positive_integer_string?(1) #=> false
  #   NaturalNumberString.zero_or_positive_integer_string?('1.1') #=> false
  #   NaturalNumberString.zero_or_positive_integer_string?('-1') #=> false
  #
  # @param value [Object] any object
  # @return [Boolean] the value is string of positive integer or zero
  def zero_or_positive_integer_string?(value)
    value.is_a?(String) && /^\d+$/ =~ value ? true : false
  end

  # Check the value is string of positive integer
  #
  # @example Use include
  #   class Example
  #     include NaturalNumberString
  #     def example
  #       positive_integer_string?('1') #=> true
  #       positive_integer_string?('100000000000000') #=> true
  #
  #       positive_integer_string?(nil) #=> false
  #       positive_integer_string?('') #=> false
  #       positive_integer_string?(1) #=> false
  #       positive_integer_string?('1.1') #=> false
  #       positive_integer_string?('-1') #=> false
  #       positive_integer_string?('0') #=> false
  #     end
  #   end
  #
  # @example Use direct
  #   NaturalNumberString.positive_integer_string?('1') #=> true
  #   NaturalNumberString.positive_integer_string?('100000000000') #=> true
  #
  #   NaturalNumberString.positive_integer_string?(nil) #=> false
  #   NaturalNumberString.positive_integer_string?('') #=> false
  #   NaturalNumberString.positive_integer_string?(1) #=> false
  #   NaturalNumberString.positive_integer_string?('1.1') #=> false
  #   NaturalNumberString.positive_integer_string?('-1') #=> false
  #   NaturalNumberString.positive_integer_string?('0') #=> false
  #
  # @param value [Object] any object
  # @return [Boolean] the value is string of positive integer
  def positive_integer_string?(value)
    value.is_a?(String) && /^[1-9]\d*$/ =~ value ? true : false
  end
end
