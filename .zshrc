
alias npm-public="npm config set @shopify:registry https://registry.yarnpkg.com"
alias npm-private="npm config set @shopify:registry https://npm.shopify.io/node/"
alias shopidev='/Users/alanthai/src/github.com/Shopify/shopify-cli/bin/shopify'
[ -f /opt/dev/dev.sh ] && source /opt/dev/dev.sh
if [ -e /Users/alanthai/.nix-profile/etc/profile.d/nix.sh ]; then . /Users/alanthai/.nix-profile/etc/profile.d/nix.sh; fi # added by Nix installer

export NVM_DIR="/opt/dev/sh/nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

alias nah="git reset --hard; git clean -df;"

[[ -f /opt/dev/sh/chruby/chruby.sh ]] && type chruby >/dev/null 2>&1 || chruby () { source /opt/dev/sh/chruby/chruby.sh; chruby "$@"; }

[[ -x /usr/local/bin/brew ]] && eval $(/usr/local/bin/brew shellenv)
