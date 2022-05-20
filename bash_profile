
# COLORMANPAGES
#
export LESS_TERMCAP_mb=$'\e[01;31m'     # begin blinking
export LESS_TERMCAP_md=$'\e[01;36m'     # Context Title
export LESS_TERMCAP_me=$'\e[0m'
export LESS_TERMCAP_se=$'\e[0m'
export LESS_TERMCAP_so=$'\e[04;35m'     # begin standout-mode - info box
export LESS_TERMCAP_ue=$'\e[0m'
export LESS_TERMCAP_us=$'\e[4;31m'      # Highlight Text

# COLOR PROMPT
#
PS1="\[\e[36m\][\u@\h \[\e[34m\]\W\[\e[36m\]]\$ \[\e[00m\]"

export CLICOLOR=1
#export TERM="xterm-color" 
#export LSCOLORS=GxFxCxDxBxegedabagaced

# COLOR FILE LIST for Linux
LS_COLORS="di=37;44:*.c=37:*.cpp=37:*.h=37:"
export LS_COLORS

alias ll="ls -lvh"

#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

# Ubuntu - COLORMANPAGES
#
export LESS_TERMCAP_mb=$'\e[01;31m' # begin blinking
export LESS_TERMCAP_md=$'\e[1;36m'      # Context Title
#export LESS_TERMCAP_se=$'\e[0m'
export LESS_TERMCAP_so=$'\e[4;32m'      # Begin standout-mode - info box
export LESS_TERMCAP_ue=$'\e[0m'         # Visible Page end of line
export LESS_TERMCAP_us=$'\e[31m'        # Highlight Text

# di = directory
# fi = file
# ln = symbolic link
# pi = fifo file
# so = socket file
# bd = block (buffered) special file
# cd = character (unbuffered) special file
# or = symbolic link pointing to a non-existent file (orphan)
# mi = non-existent file pointed to by a symbolic link (visible when you type ls -l)
# ex = file which is executable (ie. has 'x' set in permissions).
# *.rpm = files with the ending .rpm

# MacTerminal order of these pairs correspond to: (ex. GxFxCxDxBxegedabagaced)
# 1. directory
# 2. symbolic link - special kind of file that contains a reference to another file or directory.
# 3. socket - special kind of file used for inter-process communication.
# 4. pipe - special file that connects the output of one process to the input of another.
# 5. executable
# 6. block special - a kind of device file.
# 7. character special - a kind of device file.
# 8. executable with setuid bit set (setuid is a short for set user ID upon execution).
# 9. executable with setgid bit set (setgid is a short for set group ID upon execution).
# 10. directory writable to others, with sticky bit - only the owner can rename or delete files.
# 11. directory writable to others, without sticky bit - any user with write and execution permissions can rename or delete files.

# WHEN INVISIBLE KOREAN FONT FOR MAC TO LINUX SSH TERMINAL
#
#export LC_CTYPE=ko_KR.UTF-8
#export LC_ALL=ko_KR.UTF-8
