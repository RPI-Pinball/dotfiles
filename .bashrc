HISTSIZE=10000
shopt -s autocd

alias ec="echo -e \"\ec\cl\""
alias q="exit"
alias n="vim"
alias t="tmux"
alias p="ps -ef | grep"

alias rg="rg -N --no-heading"

alias sudo="sudo "

echo -e "\e]P0000000\cl"
echo -e "\e]P1ED1515\cl"
echo -e "\e]P211D116\cl"
echo -e "\e]P3F67400\cl"
echo -e "\e]P41D99F3\cl"
echo -e "\e]P59B59B6\cl"
echo -e "\e]P61ABC9C\cl"
echo -e "\e]P7FCFCFC\cl"
echo -e "\e]P87F8C8D\cl"
echo -e "\e]P9C0392B\cl"
echo -e "\e]PA1CDC9A\cl"
echo -e "\e]PBFDBC4B\cl"
echo -e "\e]PC3DAEE9\cl"
echo -e "\e]PD8E44AD\cl"
echo -e "\e]PE16A085\cl"
echo -e "\e]PFFFFFFF\cl"
echo -e "\ec\cl"

function f()
{
    cd "$(command lf -print-last-dir "$@")"
}

function t0()
{
    local filepath="$1"

    if [[ "$filepath" == *0 ]]; then
        filepath="${filepath%0}"
    fi

    if [[ -e "${filepath}0" ]]; then
        mv "${filepath}0" "${filepath}"
        echo "${filepath}0 -> ${filepath}"
    elif [[ -e "${filepath}" ]]; then
        mv "${filepath}" "${filepath}0"
        echo "${filepath} -> ${filepath}0"
    else
        echo "Error: Neither '$filepath' nor '${filepath}0' exist."
        return 1
    fi
}
