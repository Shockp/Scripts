python3 -c 'import pty; pty.spawn("/bin/bash");'
CTRL + Z
stty raw -echo; fg
reset xterm
export SHELL=bash
export TERM=xterm-256color
stty rows 38 columns 116
source /etc/skel/.bashrc
