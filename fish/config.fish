if status is-interactive
    # Commands to run in interactive sessions can go here
end

# variable

set -gx DENO_INSTALL /home/smtechien/.deno
set -gx PATH $DENO_INSTALL/bin:$PATH
set -gx GEMINI_API_KEY AIzaSyBfA3dMKn0Hta2tZnUWEscFD8gxuQFMFlY
set -gx ZK_NOTEBOOK_DIR ~/Notes/

# alias

alias n='nvim' # for nvim
alias notes='nvim ~/Notes' # for nvim
alias gemini='~/go/bin/gemini' # for gemini cli
alias aichat='~/.cargo/bin/aichat' # for aichat - llm AI Chat on cli
alias bluetui='~/.cargo/bin/bluetui' # for bluetooth manager TUI 
alias ytmusicapi='~/.local/bin/ytmusicapi' # for ytmusicapi
alias ytt='~/.local/bin/ytt' # for ytt
alias hmm='h-m-m' # for h-m-m mindmap tui
alias blf='~/Shellscripts/blight-filter.sh' #toggle blue light filter with hyprshade

function etask
    command eww update mytask=$argv # update task text on eww 
end
## alias for ytfzf

alias ytv='ytfzf -fs'
alias ytm='ytfzf -ms'

# Created by `pipx` on 2024-12-15 02:19:04
set PATH $PATH /home/smtechien/.local/bin
