#!/bin/env bash

function has_param() {
    local terms="$1"
    shift

    for term in $terms; do
        for arg; do
            if [[ $arg == "$term" ]]; then
                echo "yes"
            fi
        done
    done
}

if [[ -n $(has_param "-c --core -a --all" "$@") ]]; then
    sudo docker compose \
        -p core_stack \
        down
fi

if [[ -n $(has_param "-e --essential -a --all" "$@") ]]; then
    sudo docker compose \
        -p essential_stack \
        down
fi

if [[ -n $(has_param "-g --general -a --all" "$@") ]]; then
    sudo docker compose \
        -p general_stack \
        down
fi

if [[ -n $(has_param "-n --non_essential -a --all" "$@") ]]; then
    sudo docker compose \
        -p non_essential_stack \
        down
fi

if [[ -n $(has_param "-o --other -a --all" "$@") ]]; then
    sudo docker compose \
        -p other_stack \
        down
fi

if [[ -n $(has_param "-h --help" "$@") ]]; then
    echo "┏━━━━━━━━━━━ Containers Stacks to Stop ━━━━━━━━━━━━┓"
    echo "┃--------------------------------------------------┃"
    echo "┃ [-c] [--core] -------------------- Core Services ┃"
    echo "┃ [-e] [--essential] ---------- Essential Services ┃"
    echo "┃ [-g] [--general] -------------- General Services ┃"
    echo "┃ [-n] [--non_essential] -- Non Essential Services ┃"
    echo "┃ [-o] [--other] ------------------ Other Services ┃"
    echo "┃ [-a] [--all] ---------------- All Above Services ┃"
    echo "┃--------------------------------------------------┃"
    echo "┗━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┛"
fi

if [[ -z $(has_param "-c --core -e --essential -g --general -n --non_essential -o --other -a --all -h --help" "$@") ]]; then
    echo "┏━━━━━━ No Flag detected for selecting Stack ━━━━━━┓"
    echo "┃--------------------------------------------------┃"
    echo "┃----- Use [-h] [--help] flag for Stacks list -----┃"
    echo "┃--------------------------------------------------┃"
    echo "┗━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┛"
fi