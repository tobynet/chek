# Chek

You can gesture **require** or **not require** in ruby script.

## Installation

Add this line to your application's Gemfile:

    gem 'chek'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install chek

## Usage

```ruby
# -*- coding: utf-8 -*-
require 'chek'

☑ 'pathname'        # I wanna use it :)
☑ 'mechanize'       # I wanna use it too
☐ 'open-uri'        # I don't wanna use it now :p
☐ 'fileutils'       # I don't wanna use it now tooo
```

This means like below codes.

```ruby
require 'pathname'        # I wanna use it :)
require 'mechanize'       # I wanna use it too
# require 'open-uri'      # I don't wanna use it now :p
# require 'fileutils'     # I don't wanna use it now tooo
```

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Added some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
