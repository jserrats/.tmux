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
alias less='less -r'
alias py2env='source ~/code/py2env/bin/activate'
alias please='sudo $(fc -ln -1)'
alias ssh-config='cat ~/.ssh/config'
alias parrot='curl parrot.live'
alias burl='curl -x 127.0.0.1:8080 -k' # route curl trough burp

function wcr() { find . -name "*.$1" | xargs wc -l | sort -nr ;} # sort all files in a directory recursively by the name of lines they contain, use the extension of the file as an argument
function grepr() { grep -r -i "$1" * ;} # search recursively for files containing a word, ignoring case
function nmapss() { find /usr/share/nmap/scripts/ -type f -name "*$1*.nse" ;} # search nmap scripts
function b64d() { echo "$1" | base64 -d | hexdump -C ;}
# run a command and then pipe to ral to log (run and log). echo "test" | rnl test.txt
function log() { tee $1; echo -n "$">tmp; history 1 | awk '{ $1=""; print $0 }' | cat - $1 >> tmp && mv tmp $1 ;} 

# Shortcuts for testing telegram bots
# telegram-getX SECRET_TOKEN
function telegram-getupdates() { curl https://api.telegram.org/bot$1/getUpdates ;}
function telegram-getme() { curl https://api.telegram.org/bot$1/getMe ;}
# telegram-sendmessage SECRET_TOKEN CHAT_ID "message bla bla bla"
function telegram-sendmessage() { options='{"chat_id":"'$2'", "text":"'${3}'"}'; curl -X POST -H 'Content-Type: application/json' -d "$options" https://api.telegram.org/bot$1/sendMessage ;}

# Importing aliases that are host-specific
if [ -f "$HOME/.tmux/.local_aliases" ]; then
   source "$HOME/.tmux/.local_aliases"
fi

# TODO: put this in a .bashrc extension. 
# This forces tmux to save history after every command, so history is shared between views
trap "history -a; history -n" EXIT

