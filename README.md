# rbenv plugin for user gems support

> **Note**  
> This plugin is deprecated since the equivalent functionality was added to rbenv core.

If you `gem install --user-install bcat`, the gems will get installed under your
user's home directory (typically `~/.gem`) instead of the default RubyGems
install path.

rbenv, however, doesn't know how to discover the binstubs created this way and
won't be aware of them during the rehash or execution phase.

This plugin adds support for `$GEM_HOME` environment variable and for searching
executables inside `~/.gem/RUBY_ENGINE/RUBY_VERSION/bin` directory for the
current version when executing a command.
