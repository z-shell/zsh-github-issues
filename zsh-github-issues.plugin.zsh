# According to the Zsh Plugin Standard:
# http://zdharma.org/Zsh-100-Commits-Club/Zsh-Plugin-Standard.html
0="${${ZERO:-${0:#$ZSH_ARGZERO}}:-${(%):-%N}}"
0="${${(M)0:#/*}:-$PWD/$0}"

typeset -g CACHE_DIR="${XDG_CACHE_HOME:-$HOME/.cache}/zsh-github-issues"
typeset -g CACHE_SEEN_IDS="$CACHE_DIR/ids_seen.dat"
typeset -g CACHE_NEW_TITLES="$CACHE_DIR/new_titles.log"

# Export the message
local nl=$'\n'
# $(<...) always strips trailing newlines so this ##*$nl always works
{ typeset -g NOTIFY_MESSAGE="${$(<$CACHE_NEW_TITLES)##*$nl}" } 2>/dev/null
