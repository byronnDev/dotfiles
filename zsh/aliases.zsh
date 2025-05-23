# ─── ALIASES BÁSICOS ─────────────────────────────────────
alias ls='lsd --group-directories-first'
alias ll='lsd -lah --group-directories-first'
alias vim='nvim'
alias fd='fdfind'
alias bat='batcat'
alias c='clear'
alias cls='clear'
alias md='mkdir -p'
alias vim='nvim'
alias src='source ~/.zshrc'

# ─── ALIASES GIT ──────────────────────────────────────────
alias gs='git status'
alias ga='git add .'
alias gc='git commit -m'
alias gp='git push'
alias gl='git log --oneline --graph --decorate'
alias gd='git diff'

# ─── ALIASES VARIOS ───────────────────────────────────────
alias myip='ip a | grep inet'
alias myippub='curl -s ipinfo.io | jq -r ".ip + \" (\" + .city + \", \" + .country + \")\nISP: \" + .org + \"\nLoc: \" + .loc + \"\nHostname: \" + .hostname + \"\nTimezone: \" + .timezone"'
alias ports='sudo lsof -i -P -n | grep LISTEN'
alias pingg='ping google.com'
alias alert='notify-send --urgency=low -i terminal "Terminal Finished"'
alias plugins='echo Instalados: $(ls -1 "${ZINIT_HOME}/../plugins" 2>/dev/null | sort -u | tr "\n" " ")'

# ─── ALIAS NEOFETCH CON LOGO PERSONALIZADO ────────────────
# Usa ~/Imágenes/logo.png como logo si existe, si no usa el de dotfiles por defecto
if [[ -f ~/Imágenes/logo.png ]]; then
  alias neofetch='neofetch --jp2a ~/Imágenes/logo.png --size 550 --color_blocks off --disable infobar'
else
  alias neofetch='neofetch --jp2a ~/.dotfiles/zsh/logo.png --size 550 --color_blocks off --disable infobar'
fi