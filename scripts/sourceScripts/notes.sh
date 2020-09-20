# this is a simple alias note script for really quick notes
# view, edit, quick-edit, clear respectively
alias vnote='echo "-----------------Quicknotes-----------------" && cat ~/scripts/quicknote.md && echo "--------------------------------------------"'
alias enote='vi +Goyo ~/scripts/quicknote.md'
alias cnote=': > ~/scripts/quicknote.md && echo "Quicknote Cleared"'
