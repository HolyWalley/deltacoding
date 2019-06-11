### Features

- decode/encode array of digits
- decode/encode strings

# Deltacoding

Small simple ruby class containing methods to encoding/decoding using [Delta encoding](https://en.wikipedia.org/wiki/Delta_encoding).

# Usage

```ruby
2.6.1 :001 > require './app.rb'
=> true
2.6.1 :002 > Delta.asci_encode('Hello world')
=> [72, 29, 7, 0, 3, -79, 87, -8, 3, -6, -8]
2.6.1 :003 > Delta.asci_decode([72, 29, 7, 0, 3, -79, 87, -8, 3, -6, -8])
=> "Hello world"
```
