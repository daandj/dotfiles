# Dotfiles
## Installation

First make sure you have all the files in the `~/dotfiles` directory by doing this:
```sh
$ git clone https://github.com/daandj/dotfiles ~/dotfiles
```
Then run the script to install the symlinks:
```sh
$ cd ~/dotfiles
$ ./setup.sh
```
Now open vim and rum the following commands:
- `:PluginInstall`, to install all plugins managed by Vundle.
- `:PromptlineSnapshot ~/.shell_prompt.sh airline`, to set up promptline.

That's it!

## Possible problems and fixes

When the powerline glyphs don't render correctly, try checking the `Use built-in Powerline glyphs` option in iTerm under `Preferences>Profiles>Text`
