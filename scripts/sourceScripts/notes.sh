# this is a simple alias note script for really quick notes
# view, edit, quick-edit, clear respectively
alias vnote='echo "-----------------Quicknotes-----------------" && cat ~/scripts/quicknote.txt && echo "--------------------------------------------"'
alias enote='vi ~/scripts/quicknote.txt'
alias qnote='cat >> ~/scripts/quicknote.txt << END'
alias cnote=': > ~/scripts/quicknote.txt && echo "Quicknote Cleared"'
