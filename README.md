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

    require 'chek'
    
    ☑ 'pathname'        # I wanna use pathname :)
    ☐ 'fileutils'       # I don't wanna use fileutils now :p

This means like below codes.

    require 'pathname'      # I wanna use pathname :)
    require 'fileutils'     # I don't wanna use fileutils now :p

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Added some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
