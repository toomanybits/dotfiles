
# My DOTFILES

My Linux Config


## Terminal Screenshot

![Terminal Screenshot](/terminalss.png)


## lf config

Firstly, make sure you have installed [ueberzugpp](https://github.com/jstkdng/ueberzugpp) (as ueberzug is depreciated). Now for shell integration symlink `lf-run` into */usr/local/bin* (or in your $PATH) and make sure they're executable.

```bash
  cd .config/lf
  chmod +x lf-run  lf-ueberzug-cleaner  lf-ueberzug-previewer
  ln -s "$(pwd)/lf-run" /usr/local/bin
```
Also add `alias lf=lf-run` in your .zshrc (or .bashrc etc). As lf-run will run as a wrapper for lf and will create proper enviroment for image support using `ueberzug`.


## Updating zshrc plugins

To update the zshrc plugin, run the following command

```bash
  sh $ZDOTDIR/zsh-updater.sh
```

or `alias zupdate="sh $ZDOTDIR/zsh-updater.sh"` then run `zupdate` to update plugins.

