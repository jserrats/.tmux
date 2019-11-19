alias lsl='ls -lh'
alias lsa='ls -lha'
alias git-fire='git add -u && git commit -m "fast commit" && git push origin master'
function wcr() { find . -name "*.$1" | xargs wc -l | sort -nr ;}
function grepr() { grep -r -i "$1" * ;} 

