# The Simple S3 Gemserver

This gem provides the command `s4g-upload`, which uploads a folder
full of gems into an S3 bucket and creates/updates the appropriate
metadata to allow Bundler to use the bucket as a gem source.

The motivation is that you can build your private gems on a CI server
and then upload them into a private S3 bucket.

## Installation

    $ gem install s4-gemserver

## Usage

`s4g-upload` expects the environment variables AWS_ACCESS_KEY_ID and
AWS_SECRET_ACCESS_KEY to be set correctly, and the bucket to exist.
Run it with

    $ s4g-upload --create name-of-my-bucket path/to/my/gem-repo # first time
    $ s4g-upload name-of-my-bucket path/to/my/gem-repo # subsequent times

`path/to/my/gem-repo` should name a directory containing a
subdirectory called `gems`, which holds all the gems you wish to
upload.  `s4g-upload` will

* download, update and re-upload the "specs" files that bundler
expects to find
* upload the new gems.

If it cannot find the specs and you have not specified `--create` it will
assume that something has gone wrong, and stop.


## Development

After checking out the repo, run `bundle install` to install dependencies.

## Contributing

Bug reports and enhancement requests are welcome on GitHub at https://github.com/simplybusiness/s4-gemserver.

Please open an issue describing the bug or requested feature before spending time working on a patch - it might be that we already are working on it or have a different approach in mind for whatever you want to do

This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.

## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the S4::Gemserver project’s codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/simplybusiness/s4-gemserver/blob/master/CODE_OF_CONDUCT.md).
