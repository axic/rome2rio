Rome2rio
========

A Ruby wrapper for the Rome2rio API. See http://www.rome2rio.com/documentation/search for the official documentation.

Installation
------------

```
gem install rome2rio
```


Usage
-----

```ruby
require 'rome2rio'
results = Rome2rio::Connection.new.search(search options)
puts results.routes[0].duration
```

All field names (both request and response) use the original naming as in the API documentation.

The API key and endpoint URL both can be set when creating an instance, but they can be overwritten by passing them for a request.

Complex datatypes (such as Position, Size, Offset, DayFlags) will be parsed.

Using Position for input:

```ruby
Rome2rio::Connection.new.search({:oPos => Rome2rio::Position.new(41.79443,12.25108), :dPos => Rome2rio::Position.new(-22.81215,-43.24721)})
```

The original JSON response is also available in the ```verbatim``` field.

Copyright
---------

Made for Soundtravel (http://soundtravel.co/).

Copyright (c) 2013 Alex Beregszaszi. See LICENSE for details.
