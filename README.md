# OkHealthCheck

This gem provides a Rack app that responds to any request with a 200 status code and the text "OK". We suggest you mount it so it responds to requests from "/healthcheck" - in fact, if you use Rails, we do that for you.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'ok_health_check'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install ok_health_check

## Usage

### Rails
Nothing to do here. Rails will automatically include a route `/healthcheck` that will return `OK` when requested.

If you want it to listen on some other endpoint, just add the following to your `config/routes.rb` file:

```ruby
mount OkHealthCheck.new, at: "/<desired endpoint>"
```

### Other Rack Apps (Sinatra, etc.)

```ruby
require 'ok_health_check'

run Rack::URLMap.new \
  "/" => <Your app class>,
  "/healthcheck" => OkHealthCheck.new
 ```

## Contributing

1. Fork it ( https://github.com/[my-github-username]/ok_health_check/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
