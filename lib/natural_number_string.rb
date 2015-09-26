require 'natural_number_string/version'

module NaturalNumberString
  module_function

  def zero_or_positive_integer_string?(value)
    value.is_a?(String) && /^\d+$/ =~ value ? true : false
  end

  def positive_integer_string?(value)
    value.is_a?(String) && /^[1-9]\d*$/ =~ value ? true : false
  end
end
