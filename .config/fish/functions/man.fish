function man --description 'Format and display manual pages'
  #  set -lx MANPATH $__fish_datadir/man $MANPATH ""

    set -q man_blink; and set -l blink (set_color $man_blink); or set -l blink (set_color -o red)
    set -q man_bold; and set -l bold (set_color $man_bold); or set -l bold (set_color -o 5fafd7)
    set -q man_standout; and set -l standout (set_color $man_standout); or set -l standout (set_color 949494)
    set -q man_underline; and set -l underline (set_color $man_underline); or set -l underline (set_color -u afafd7)

    set -l end (printf "\e[0m")

set -x LESS_TERMCAP_mb (printf "\e[01;32m")
set -x LESS_TERMCAP_md (printf "\e[01;32m")
set -x LESS_TERMCAP_me (printf "\e[0m")
set -x LESS_TERMCAP_se (printf "\e[0m")
set -x LESS_TERMCAP_so (printf "\e[01;44;33m")
set -x LESS_TERMCAP_ue (printf "\e[0m")
set -x LESS_TERMCAP_us (printf "\e[01;32m")



    set -lx GROFF_NO_SGR yes # fedora

    command man $argv
end
