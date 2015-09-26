# NaturalNumberString

[![Gem version][gem-image]][gem-url] [![Travis-CI Status][travis-image]][travis-url]

> Check the string is a natural number?


## Usage

```ruby
require 'natural_number_string'

# Use include
class Example
  include NaturalNumberString
  def example
    positive_integer_string?('1') #=> true
    positive_integer_string?('100000000000000') #=> true

    positive_integer_string?(nil) #=> false
    positive_integer_string?('') #=> false
    positive_integer_string?(1) #=> false
    positive_integer_string?('1.1') #=> false
    positive_integer_string?('-1') #=> false
    positive_integer_string?('0') #=> false
  end
end

# Use direct
NaturalNumberString.positive_integer_string?('1') #=> true
NaturalNumberString.positive_integer_string?('100000000000') #=> true

NaturalNumberString.positive_integer_string?(nil) #=> false
NaturalNumberString.positive_integer_string?('') #=> false
NaturalNumberString.positive_integer_string?(1) #=> false
NaturalNumberString.positive_integer_string?('1.1') #=> false
NaturalNumberString.positive_integer_string?('-1') #=> false
NaturalNumberString.positive_integer_string?('0') #=> false
```


## API

### NaturalNumberString.positive_integer_string?(value) -> boolean

#### value

*Required*

value.


### NaturalNumberString.zero_or_positive_integer_string?(value) -> boolean

#### value

*Required*

value.


## Changelog

[changelog.md](./changelog.md).


## Installation

Add this line to your application's Gemfile:

```ruby
gem 'natural_number_string'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install natural_number_string


## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake test` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).


## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/packsaddle/ruby-natural_number_string. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](contributor-covenant.org) code of conduct.


## License

© [sanemat](http://sane.jp)

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).

[travis-url]: https://travis-ci.org/packsaddle/ruby-natural_number_string
[travis-image]: https://img.shields.io/travis/packsaddle/ruby-natural_number_string/master.svg?style=flat-square&label=build%20%28linux%29
[gem-url]: https://rubygems.org/gems/natural_number_string
[gem-image]: http://img.shields.io/gem/v/natural_number_string.svg?style=flat-square
