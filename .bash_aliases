alias lsl='ls -lh'
alias lsa='ls -lha'
function wcr() { find . -name "*.$1" | xargs wc -l | sort -nr ;}

