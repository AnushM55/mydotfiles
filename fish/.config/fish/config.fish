if status is-interactive
    # Commands to run in interactive sessions can go here
end

zoxide init fish | source
source (/usr/local/bin/starship init fish --print-full-init | psub)
alias nv='NVIM_APPNAME="nvim-kickstart" nvim'
