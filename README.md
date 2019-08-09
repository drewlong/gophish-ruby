# GoPhish Ruby API

This is the unofficial Ruby wrapper for the GoPhish API. Documentation can be found [here](https://www.rubydoc.info/github/drewlong/gophish-ruby).

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'gophish'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install gophish

## Usage

Configuration:

```
require 'gophish'

client = GoPhish::Client.new do |config|
  config.url = <GOPHISH HOSTNAME/URL>
  config.api_key = <API KEY>
end
```

Basic usage:

```
client.get_campaigns
client.get_campaign(<ID>)
client.get_groups
client.get_group(<ID>)
...
```

Object Creation:

```
cmpn = {
  "name": 'Example Campaign',
  "template": {
    "name": 'Example Template'
  },
  "url": 'localhost',
  "page": {
    "name": 'example.com'
  },
  "smtp": {
    "name": 'Example Sending Profile'
  },
  "launch_date": Time.now.strftime('%Y-%m-%dT%H:%m:00+00:00'),
  "groups": [
    {
      "name": 'Example Group'
    }
  ]
}

res = client.create_campaign(cmpn)
```
## Development

After checking out the repo, run `bin/setup` to install dependencies. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/drewlong/gophish.


## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).
