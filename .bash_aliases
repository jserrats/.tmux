alias lsl='ls -lh'
alias lsa='ls -lha'
alias git-fire='git add -u && git commit -m "fast commit" && git push origin master'
alias puuid='python3 -c "import uuid; print(str(uuid.uuid4()))"'
function wcr() { find . -name "*.$1" | xargs wc -l | sort -nr ;}
function grepr() { grep -r -i "$1" * ;} 

