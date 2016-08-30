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

##Issues

Feel free to submit issues and enhancement requests.

## Contribute

Contributions are always welcome! Please follow the "fork-and-pull" Git workflow.

 1. **Fork** the repo on GitHub
 2. **Clone** the project to your own machine
 3. **Commit** changes to your own branch
 4. **Push** your work back up to your fork
 5. Submit a **Pull request** so that we can review your changes

NOTE: Be sure to merge the latest from "upstream" before making a pull request!
