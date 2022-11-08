if ! (( ${+DOT_PREFER_TPUT_OVER_ENV} )); then
    export DOT_PREFER_TPUT_OVER_ENV=false
fi

local _LOLMSG_PATH=${0:a:h}
export fpath=( "$_LOLMSG_PATH" ${fpath[@]} )

autoload -Uz "$_LOLMSG_PATH/lolmsg"

function lolmsg {
    # undefined
    builtin autoload -X
}
