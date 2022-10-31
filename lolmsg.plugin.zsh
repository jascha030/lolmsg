if (( ${+VIM} && ${+VIMRUNTIME} && ${+MYVIMRC} )); then 
  export _IS_VIMTERM=true 
else 
  export _IS_VIMTERM=false
fi 

# Reset blink effect in case it wasn't ended in previous session.
if ! (( ${+DOT_DEFAULT_LOL_MSG} )); then 
    # Normal msg displayed with figlet in funky colors.
    export DOT_DEFAULT_LOL_MSG="Hackerman Mode 030"   
fi 

if ! (( ${+DOT_NEOVIM_LOL_MSG} )); then 
    # Alt msg displayed when in Neovim term.
    export DOT_NEOVIM_LOL_MSG="NVIM 030"
fi

if ! (( ${+DOT_PREFER_TPUT_OVER_ENV} )); then 
    export DOT_PREFER_TPUT_OVER_ENV=false
fi

export fpath=( ${fpath[@]} ./lolmsg )

autoload -Uz ./lolmsg

function lolmsg {
    # undefined
    builtin autoload -X
}
