# Autocompletion for Linkerd.
#
if (( $+commands[linkerd] )); then
    __LINKERD_COMPLETION_FILE="${ZSH_CACHE_DIR}/linkerd_completion"

    if [[ ! -f $__LINKERD_COMPLETION_FILE ]]; then
        linkerd completion zsh >! $__LINKERD_COMPLETION_FILE
    fi

    [[ -f $__LINKERD_COMPLETION_FILE ]] && source $__LINKERD_COMPLETION_FILE

    unset __LINKERD_COMPLETION_FILE
fi
