### Features

- decode/encode array of digits
- decode/encode strings

# Deltacoding

Simple gem containing methods to encoding/decoding using [Delta encoding](https://en.wikipedia.org/wiki/Delta_encoding).

# Usage

```
gem install deltacoding
```

```ruby
2.6.1 :001 > require 'deltacoding'
=> true
2.6.1 :002 > Delta.asci_encode('Hello world')
=> [72, 29, 7, 0, 3, -79, 87, -8, 3, -6, -8]
2.6.1 :003 > Delta.asci_decode([72, 29, 7, 0, 3, -79, 87, -8, 3, -6, -8])
=> "Hello world"
```
