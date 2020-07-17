
set -x

export WORK=$PWD

mkdir -p "${WORK}/.npm-packages"

export NPM_PACKAGES="${WORK}/.npm-packages"

echo 'prefix=${NPM_PACKAGES}' \
  | tee "${WORK}/.npmrc"

ln -s "${WORK}/.npmrc" $HOME/

export NODE_PATH="$NPM_PACKAGES/lib/node_modules:$NODE_PATH"
export PATH="$NPM_PACKAGES/bin:$PATH"

#unset MANPATH # delete if you already modified MANPATH elsewhere in your config
#MANPATH="$NPM_PACKAGES/share/man:$(manpath)"

set +x
