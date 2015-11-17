# extracted from https://bugs.funtoo.org/browse/FL-2006

function init --on-event init_keychain
  if not available keychain
    echo "🔑  Please install 'keychain' first!"
  else
    if status --is-interactive
      # handle keychain versions that do not support --confhost
      if not keychain --eval --quiet --confhost --timeout 60 2>/dev/null | source
        keychain --eval --quiet --timeout 60 | source
      end
    end
  end
end
