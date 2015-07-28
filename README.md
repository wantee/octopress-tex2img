# OctopressTex2img

An octopress ink plugin generating png img from tex source and insert it into markdown posts.

[![Build Status](https://travis-ci.org/wantee/octopress-tex2img.svg)](https://travis-ci.org/wantee/octopress-tex2img)
[![Gem Version](https://badge.fury.io/rb/octopress-tex2img.svg)](http://badge.fury.io/rb/octopress-tex2img)
[![License](http://img.shields.io/:license-mit-blue.svg)](https://github.com/wantee/octopress-tex2img/blob/master/LICENSE.txt)

## Prerequisites
* TeX Live 2013

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'octopress-tex2img'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install octopress-tex2img

## Usage

```
{% tex2img path_to_tex_file args-to-img-tag %}
```

For example,

```
{% tex2img misc/test.tex center /assets/miscs/test.png "fig:test" title:"Test tex figure" %}
```

`octopress-tex2img` will generate png file from tex file, and replace the `tex2img` tag to an `img` tag at the current position.

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release` to create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

1. Fork it ( https://github.com/wantee/octopress-tex2img/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
