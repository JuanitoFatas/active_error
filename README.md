# ActiveError

[![Gem Version](https://badge.fury.io/rb/active_error.svg)](https://badge.fury.io/rb/active_error)
[![Build Status](https://travis-ci.org/JuanitoFatas/active_error.svg?branch=master)](https://travis-ci.org/JuanitoFatas/active_error)

Easily create an exception with backtrace.

## Usage

```ruby
ActiveError.new(StandardError, "error message")
ActiveError.new(StandardError, "error message", backtrace: caller)
```

## Why

Fix this common pattern:

```ruby
exception = StandardError.new("error message")
exception.set_backtrace(caller)
```

Should be in one-step:

```ruby
ActiveError.new(StandardError, "error message", backtrace: caller)
```

Enjoy :tada:

## Installation

Add this line to your application's Gemfile:

```ruby
gem "active_error"
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install active_error


## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/JuanitoFatas/active_error.

## License

The gem is available as open source under the terms of the [Apache License 2.0](http://www.apache.org/licenses/LICENSE-2.0).
