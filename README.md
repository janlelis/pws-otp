# pws-otp [![[version]](https://badge.fury.io/rb/pws-otp.svg)](http://badge.fury.io/rb/pws-otp)  [![[ci]](https://github.com/janlelis/pws-otp/workflows/Test/badge.svg)](https://github.com/janlelis/pws-otp/actions?query=workflow%3ATest)

Experimental OTP support for [pws](https://github.com/janlelis/pws) via [rotp](https://github.com/mdp/rotp).

## Setup

```
$ gem install pws-otp
```


## Usage

Get the current time-based OTP of a PWS entry (must be a Base32 seceret):

```
$ pws-otp time [entry]
```

## MIT License

Copyright (C) 2017 Jan Lelis <https://janlelis.com>. Released under the MIT license.
