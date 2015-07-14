# extracted from https://bugs.funtoo.org/browse/FL-2006

function init --on-event init_keychain
  set -l keychain_bin (which keychain)
  if not test -n "$keychain_bin"
    echo "🔑  Please install 'keychain' first: brew install keychain"
  else
    if status --is-interactive
      keychain --eval --quiet -Q id_rsa | source
    end
  end
end
