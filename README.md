# My .dotfiles

## Installation

### Using rcm (recommended)
I use https://github.com/thoughtbot/rcm (and Git of course) to manage my dotfiles.

Install rcm: https://github.com/thoughtbot/rcm

Clone onto the target machine: 
```
cd ~
git clone git@github.com:kiltec/.dotfiles.git
```

Install the dotfiles:

```env RCRC=$HOME/dotfiles/rcrc rcup```

After the initial installation, you can run `rcup` without the one-time variable `RCRC` being set (`rcup` will symlink the
repo's `rcrc` to `~/.rcrc` for future runs of `rcup`).
### Manual installation
Clone onto the target machine and move any dotfile you'd like to use into you home directory or create symlinks pointing to the clone in you home dir. Remember to rename the files by prepending `.` to the filename.
