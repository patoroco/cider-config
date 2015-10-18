export EDITOR=vim

# Colors
export CLICOLOR=1
export LSCOLORS=gxfxcxdxbxegedabagacad
export LS_COLORS='di=36:fi=0:ln=35:pi=5:so=5:bd=5:cd=5:or=0;41:mi=0:ex=31'

# Add colors to man command
# Source: https://groups.google.com/forum/#!topic/iterm2-discuss/QtSk_SOT1zQ
export MANPAGER='col -bx | vim -c ":set ft=man nonu nolist" -R -'
