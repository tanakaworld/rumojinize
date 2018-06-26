# 🐶Rumojinize

[![CircleCI](https://circleci.com/gh/tanakaworld/rumojinize/tree/master.svg?style=svg)](https://circleci.com/gh/tanakaworld/rumojinize/tree/master)
[![Gem Version](https://badge.fury.io/rb/rumojinize.svg)](https://badge.fury.io/rb/rumojinize)

This is an ActiveRecord plugin make you easily store emoji to DB.

Supporting:

- Encode emoji to UTF8 text before save. `🐶`->`:dog:`
- Decode encoded emoji in the instance of model. `:dog:`->`🐶`

## Concept

In order to store the emoji to your Database, we need following steps.
 
- Change the charset from `utf8` to `utf8mb4`.
- Upgrade MySQL version greater than `5.5`.

But "Rumojinize" make it simple!!

## Usage

**Install gem:**

```
gem 'rumojinize'
```

```
bundle install
```

**Set up by `rumojinize`.**

```
class Article < ApplicationRecord
  rumojinize :body
end
```

Also you can rumojinize multiple fields.

```
class Article < ApplicationRecord
  rumojinize :body, :title
end
```

## Example

**For example, Rumojinize will encode `🐶` to `:dog:` before save to DB, and decode in the instance.**

![image](https://user-images.githubusercontent.com/3489430/41193342-a5b264de-6c45-11e8-96b4-d1818ca2779e.png)

## Dependencies

- [rumoji](https://github.com/mwunsch/rumoji)

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/tanakaworld/rumojinize. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.

## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the Rumojinize project’s codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/tanakaworld/rumojinize/blob/master/CODE_OF_CONDUCT.md).
