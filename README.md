# rbenv plugin for user gems support

If you `gem install --user-install bcat`, the gems will get installed under your
user's home directory (typically `~/.gem`) instead of the default RubyGems
install path.

rbenv, however, doesn't know how to discover these executables and won't be
aware of them. This brings support for `$GEM_HOME` environment variable and
for searching executables inside `~/.gem/RUBY_ENGINE/RUBY_VERSION/bin` directory
for the current version when executing a command.
