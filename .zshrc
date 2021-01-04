# aliases
	alias g='git'
	alias ls="exa -l"
	alias cat="bat"
 
# zinit init
	source "$HOME/.zinit/bin/zinit.zsh"
	autoload -Uz _zinit
	(( ${+_comps} )) && _comps[zinit]=_zinit
	# needed for fzf-tab
	autoload compinit
	compinit
 
# zinit basic plugins
	zinit light-mode for \
	zinit-zsh/z-a-rust \
	zinit-zsh/z-a-as-monitor \
	zinit-zsh/z-a-patch-dl \
	zinit-zsh/z-a-bin-gem-node

# zinit chosen plugins
	zinit pack"bgn-binary+keys" for fzf
	zinit light-mode for \
	denysdovhan/spaceship-prompt \
	Aloxaf/fzf-tab \
	zdharma/fast-syntax-highlighting \
	zsh-users/zsh-autosuggestions \
	b4b4r07/emoji-cli \
	zsh-users/zsh-history-substring-search

# arrows for completion
	bindkey '^[[A' history-substring-search-up
	bindkey '^[[B' history-substring-search-down
	bindkey "[D" backward-word
	bindkey "[C" forward-word
	bindkey "^[a" beginning-of-line
	bindkey "^[e" end-of-line

# history
	SAVEHIST=3000
	setopt appendhistory
	setopt inc_append_history
	setopt share_history

# Homebrew update once a day only
	export HOMEBREW_AUTO_UPDATE_SECS=86400

# spaceship prompt theme
	SPACESHIP_PROMPT_ORDER=(dir git char)

# Tell homebrew to not autoupdate every single time I run it (just once a week).
export HOMEBREW_AUTO_UPDATE_SECS=604800
 
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
