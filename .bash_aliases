alias lsl='ls -lh'
alias lsa='ls -lha' 
alias git-fire='git add -u && git commit -m "fast commit" && git push origin master' # Fast commit in case of emergency or laziness
alias puuid='python3 -c "import uuid; print(str(uuid.uuid4()))"' # shortcut to generating uuids
alias cd..='cd ..'
alias cd...='cd ../..'
alias wmip='curl ipinfo.io' # obtain json with information about external ips
alias r2help='r2 -q -c '\''?*~...'\'' -' # radare2 help command
alias aliases='cat ~/.tmux/.bash_aliases ~/.tmux/.local_aliases | pygmentize' # display aliases with syntax highlight 
alias xc='xclip -selection c' # xclip aliases for fast copying to clipboar with a pipe
alias catp='pygmentize'
alias rmf='rm -rf'
function wcr() { find . -name "*.$1" | xargs wc -l | sort -nr ;} # sort all files in a directory recursively by the name of lines they contain, use the extension of the file as an argument
function grepr() { grep -r -i "$1" * ;} # search recursively for files containing a word, ignoring case

# Shortcuts for testing telegram bots
# telegram-getX SECRET_TOKEN
function telegram-getupdates() { curl https://api.telegram.org/bot$1/getUpdates ;}
function telegram-getme() { curl https://api.telegram.org/bot$1/getMe ;}
# telegram-sendmessage SECRET_TOKEN CHAT_ID "message bla bla bla"
function telegram-sendmessage() { curl -X POST -H 'Content-Type: application/json' -d '{"chat_id": "'$2'", "text": "'$3'", "disable_notification": true}' https://api.telegram.org/bot$1/sendMessage ;}

# Importing aliases that are host-specific
if [ -f "$HOME/.tmux/.local_aliases" ]; then
   source "$HOME/.tmux/.local_aliases"
fi

