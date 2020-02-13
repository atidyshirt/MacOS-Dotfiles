#this is a simple alias note script for really quick notes

alias vnote='echo "-----------------Quicknotes-----------------" && cat ~/scripts/quicknote.txt && echo "--------------------------------------------"'
alias qnote='cat >> ~/scripts/quicknote.txt << END'
alias cnote=': > ~/scripts/quicknote.txt && echo "Quicknote Cleared"'
