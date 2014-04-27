# alcohol\iso3166

A library providing ISO 3166-1 data.

[![Latest Stable Version](https://poser.pugx.org/alcohol/iso3166/v/stable.png)](https://packagist.org/packages/alcohol/iso3166)
[![Build Status](https://travis-ci.org/alcohol/iso3166.png?branch=master)](https://travis-ci.org/alcohol/iso3166)
[![License](https://poser.pugx.org/alcohol/iso3166/license.png)](https://packagist.org/packages/alcohol/iso3166)

## Usage

Code:

``` php
use Alcohol\ISO3166;

ISO3166::getByAlpha2('NL');
 // or
ISO3166::getByAlpha3('NLD');
 // or
ISO3166::getByNumeric('528');
```

Result:

```
Array
(
    [name] => Netherlands (the)
    [alpha2] => NL
    [alpha3] => NLD
    [numeric] => 528
    [currency] => EUR
)
```

## Installation

Either install it directly from command line using composer:

``` sh
$ composer require alcohol/iso3166
```

or include it as a dependency in your composer.json:

``` javascript
{
    "require": {
        "alcohol/iso3166": "~1.0"
    }
}
```

## Contributing

Feel free to submit a pull request or create an issue ticket.
