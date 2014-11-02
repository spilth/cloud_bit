[![Build Status](https://travis-ci.org/spilth/cloudbit_client.svg?branch=master)](https://travis-ci.org/spilth/cloudbit_client)

# CloudbitClient

A Ruby Gem for sending output to a [littleBits CloudBit](http://littlebits.cc/bits/cloudbit).

## Installation

Add this line to your application's Gemfile:

    gem 'cloudbit_client'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install cloudbit_client

## Usage

    require 'cloudbit_client'
    cloudbit = CloudbitClient.new('your-access-token', 'your-device-id')
    cloudbit.output(100, 3000)

You can get your Access Token and Device ID from the Settings page of the [littleBits CloudBit Control Panel](http://control.littlebitscloud.cc)

## Contributing

1. Fork it ( http://github.com/spilth/cloudbit_client/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
