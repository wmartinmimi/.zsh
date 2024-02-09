# .zsh

my zsh plugin directory

## How to use

```sh
cd ~
git clone https://github.com/wmartinmimi/.zsh.git
cd .zsh
git submodule init && git submodule update
fast-theme -t ~/.zsh/zsh-fsh/themes/catppuccin-mocha
echo 'source ~/.zsh/init.sh' >> .zshrc
```

## How to update the plugins

```sh
cd ~/.zsh
git submodule update --remote --merge
```

## IMPORTANT

I do not own the zsh plugins provided in the git submodules.

## License

Licensed under `MIT License`

Plugin repository have their own separate licenses.

