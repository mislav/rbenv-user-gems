source "${BASH_SOURCE%/*}/../../../share/rbenv-user-gems.sh"

if gemdir="$(user_gems_dir "$RBENV_VERSION")"; then
  $RBENV_ROOT/versions/$RBENV_VERSION/bin/bundle config path "$(user_gems_dir "$RBENV_VERSION")"
  if [ ! -x "$RBENV_COMMAND_PATH" ]; then
    RBENV_COMMAND_PATH="${gemdir}/bin/${RBENV_COMMAND}"
  fi
fi
