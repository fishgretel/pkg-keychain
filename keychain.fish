# extracted from https://bugs.funtoo.org/browse/FL-2006

function init --on-event init_keychain
  if not available keychain
    echo "🔑  Please install 'keychain' first: brew install keychain"
  else
    if status --is-interactive
      keychain --eval --quiet -Q | source
    end
  end
end
