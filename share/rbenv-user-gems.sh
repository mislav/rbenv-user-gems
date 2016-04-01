user_gems_home() {
  if [ -n "$GEM_HOME" ]; then
    echo "$GEM_HOME"
  else
    return 1
  fi
}

user_gems_dir() {
  user_gems_home && return 0
  local gemdir=""

  case "$1" in
  1.8.*   ) gemdir="ruby/1.8" ;;
  1.9.*   ) gemdir="ruby/1.9.1" ;;
  2.0.*   ) gemdir="ruby/2.0.0" ;;
  2.1.*   ) gemdir="ruby/2.1.0" ;;
  2.2.*   ) gemdir="ruby/2.2.0" ;;
  2.3.*   ) gemdir="ruby/2.3.0" ;;
  jruby-* ) gemdir="jruby/1.9" ;;
  rbx-2.* ) gemdir="rbx/2.1" ;;
  esac

  if [ -n "$gemdir" ]; then
    echo "${HOME}/.gem/${gemdir}"
  else
    return 1
  fi
}
