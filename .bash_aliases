alias lsl='ls -lh'
alias lsa='ls -lha' 
alias git-fire='git add -u && git commit -m "fast commit" && git push origin master' # Fast commit in case of emergency or laziness
alias puuid='python3 -c "import uuid; print(str(uuid.uuid4()))"' # shortcut to generating uuids
alias cd..='cd ..'
alias cd...='cd ../..'
alias wmip='curl ipinfo.io' # obtain json with information about external ips
function wcr() { find . -name "*.$1" | xargs wc -l | sort -nr ;} # sort all files in a directory recursively by the name of lines they contain, use the extension of the file as an argument
function grepr() { grep -r -i "$1" * ;} # search recursively for files containing a word, ignoring case

