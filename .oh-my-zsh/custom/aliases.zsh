#
# Bastien's zsh aliases
#

# Basics
alias ls='ls --color=auto'
alias ll='ls -la'
alias la='ls -la'
alias ..='cd ..'
alias ...='cd .. && cd ..'
alias grep='grep --color=always'
alias ff='find . -iname'
alias h='history'

 # Emacs
alias em='emacs -nw'

 # Python HTTP Server
alias pythonHTTP='python -m SimpleHTTPServer 8000'

 # Dev utils
alias rg='find . | xargs grep -n --color=always'
alias rgc='find . \( -name "*.c" -o -name "*.cxx" -o -name "*.cpp" -o -name "*.cc" \) -print | xargs grep -n --color=auto'
alias rgh='find . \( -name "*.h" -o -name "*.hxx" \) -print | xargs grep -n --color=always'
alias rgch='find . \( -name "*.[ch]" -o -name "*.[ch]xx" \) -print | xargs grep -n --color=always'
alias rgj='find . \( -name "*.java" \) -print | xargs grep -n --color=always'
alias rgjs='find . \( -name "*.js" \) -print | xargs grep -n --color=always'
alias rgts='find . \( -name "*.ts" \) -print | xargs grep -n --color=always'
alias rgcm='find . \( -name "CMakeLists.txt" \) -print | xargs grep -n --color=always'
alias rgx='find . \( -name "*.x??" \) -print | xargs grep -n --color=always'
alias rgpy='find . \( -name "*.py" \) -print | xargs grep -n --color=always'
alias rghtml='find . \( -name "*.html" \) -print | xargs grep -n --color=always'

