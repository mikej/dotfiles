export LESS=-R

# Make ls colourful
export CLICOLOR=1
export LSCOLORS=Exfxcxdxbxegedabagacad

# Highlight matches in grep
export GREP_OPTIONS='--color=auto'

# Dash.app shell trigger from https://gist.github.com//sparksp/6840365
dash() {
  open "dash://$1"
}
