# TryWith

TryWith is an extendable framework for contingency handling.

The goal is to provide robus wrapping of method calls, with simple syntax.

## Installation

Add this line to your application's Gemfile:

    gem 'try_with'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install try_with

## Usage

    require 'try_with'

    #Keep trying for 5 attempts
    try_with(5).attempts do
       SomeHTTPClient.put :some => :data
    end

It will retry if an error is raised.  It stops trying if no error is raised, or retry count
is reached.

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Added some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
