To install these dotfiles do:

```bash
git clone git@github.com:Vagos/.dotfiles.git $HOME/.cfg

alias config='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'

config checkout
```

If any errors occur, that means that you have conflicting dotfiles.
Back them up and do config checkout again.
