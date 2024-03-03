# Change working dir in shell to last dir in lf on exit (adapted from ranger).
#
# You need to either copy the content of this file to your shell rc file
# (e.g. ~/.bashrc) or source this file directly:
#
#     LFCD="/path/to/lfcd.sh"
#     if [ -f "$LFCD" ]; then
#         source "$LFCD"
#     fi
#
# You may also like to assign a key to this command:
#
#     bind '"\C-o":"lfcd\C-m"'  # bash
#     bindkey -s '^o' 'lfcd\n'  # zsh
#

cleanup() {
  exec 3>&-
  rm "$FIFO_UEBERZUG"
}

# if [ -n "$SSH_CLIENT" ] || [ -n "$SSH_TTY" ]; then
#   lf "$@"
# else
#   [ ! -d "$HOME/.cache/lf" ] && mkdir --parents "$HOME/.cache/lf"
#   export FIFO_UEBERZUG="$HOME/.cache/lf/ueberzug-$$"
#   mkfifo "$FIFO_UEBERZUG"
#   ueberzug layer -s <"$FIFO_UEBERZUG" -p json &
#   exec 3>"$FIFO_UEBERZUG"
#   trap cleanup EXIT
#   lf "$@" 3>&-
# fi


lfcd () {
    tmp="$(mktemp)"

    [ ! -d "$HOME/.cache/lf" ] && mkdir --parents "$HOME/.cache/lf"
    export FIFO_UEBERZUG="$HOME/.cache/lf/ueberzug-$$"
    mkfifo "$FIFO_UEBERZUG"
    (ueberzug layer -s <"$FIFO_UEBERZUG" -p json &)
    exec 3>"$FIFO_UEBERZUG"
    trap cleanup EXIT

    lf -last-dir-path="$tmp" "$@" 3>&-
    if [ -f "$tmp" ]; then
        dir="$(cat "$tmp")"
        rm -f "$tmp"
        if [ -d "$dir" ]; then
            if [ "$dir" != "$(pwd)" ]; then
                cd "$dir" || exit 1
            fi
        fi
    fi
}
