# Arpad

A lightweight gem that calculates
[Elo](http://en.wikipedia.org/wiki/Elo_rating_system)

## Installation

Add this line to your application's Gemfile:

```
gem 'arpad'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install arpad

## Usage
`require "arpad"` on the top of your ruby file

To calculate elo: `Arpad::Calculator.calculate_elo(elo_player, elo_opponent,
outcome)`

i.e `Arpad::Calculator.calculate_elo(1400, 1500, "win")` returns 1410

outcome inputs include `"win"`, `"lose"`, or `"tie"`

`calculate_elo` can also take an optional hash `k_factor`. `k_factor` is defaulted
to 16 unless otherwise stated.

i.e `Arpad::Calculator.calculate_elo(1400, 1500, "win", k_factor: 32)` returns
1420

## Contributing

1. Fork it ( https://github.com/elijahkim/arpad/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
