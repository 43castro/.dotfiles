# dotfiles

My dotfiles here for the zsh shell, git and neovim (this one is not really in use since I use VSCode)

My dotfiles are stored in the `/.dotfiles` folder inside my machine. Then stowed (symlinked) to my home folder.  
This dotfiles [stow guide](https://www.jakewiesler.com/blog/managing-dotfiles) by Jake Wiesler️ helped me while setting up my system. If you want to learn more about stow, you can read this guide as well as this [other guide](https://www.gnu.org/software/stow/manual/stow.html#Terminology) from GNU project.

I use Oh My Zsh as my main zsh shell and the plugin is use are [zsh-autosuggetions](https://github.com/zsh-users/zsh-autosuggestions) and [zsh-sintax-highlighting](https://github.com/zsh-users/zsh-syntax-highlighting). This are cloned to my `/.oh-my-zsh` folder using the [ansible playbook](https://github.com/43hershel/playbooks) during system setup. Here is the following structure: 

I use the following dependencies in my terminal. 

- ZSH as my shell
- [Oh My Zsh](https://ohmyz.sh/) for shell customization with the following extensions
	- [zsh-autosuggestions](https://github.com/zsh-users/zsh-autosuggestions)
	- [zsh-syntax-highlighting](https://github.com/zsh-users/zsh-syntax-highlighting)
```shell
plugins=(git
zsh-autosuggestions
zsh-syntax-highlighting
)
```
- [neovim ](https://neovim.io/)
- my git config 
- [fzf](https://github.com/junegunn/fzf) 
	- useful commands and setup
		- Use `ctrl +r` for a list of recent commands in the session. **ULTRA USEFUL**
		- I use `ff` to fuzzy find Development folder. It's written in my .zshrc file as the following 
```shell 
ff() {
  local dir
  dir=$(find /Users/castro/Development -type d -maxdepth 3 ! -name '.*' | fzf)
  if [ -n "$dir" ]; then
    cd "$dir" || return
    clear  # Clear the terminal screen
  fi
}

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
```