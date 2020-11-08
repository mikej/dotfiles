export LESS=-R

# Make ls colourful
export CLICOLOR=1
export LSCOLORS=Exfxcxdxbxegedabagacad

# Highlight matches in grep
export GREP_OPTIONS='--color=auto'

eval "$(rbenv init -)"
export PATH=$PATH:/usr/local/jboss/bin

# Dash.app shell trigger from https://gist.github.com//sparksp/6840365
dash() {
  open "dash://$1"
}
