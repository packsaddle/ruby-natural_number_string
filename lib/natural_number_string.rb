require 'natural_number_string/version'

module NaturalNumberString
  module_function

  def natural_number_string?(value)
    value.is_a?(String) && /^\d+$/ =~ value ? true : false
  end
end
