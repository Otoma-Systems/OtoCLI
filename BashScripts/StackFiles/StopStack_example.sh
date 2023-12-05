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

if [[ -n $(has_param "-C --core -A --all" "$@") ]]; then
    sudo docker compose \
        -p core_stack \
        down
fi

if [[ -n $(has_param "-E --essential -A --all" "$@") ]]; then
    sudo docker compose \
        -p essential_stack \
        down
fi

if [[ -n $(has_param "-G --general -A --all" "$@") ]]; then
    sudo docker compose \
        -p general_stack \
        down
fi

if [[ -n $(has_param "-N --non_essential -A --all" "$@") ]]; then
    sudo docker compose \
        -p non_essential_stack \
        down
fi

if [[ -n $(has_param "-O --other -A --all" "$@") ]]; then
    sudo docker compose \
        -p other_stack \
        down
fi

if [[ -n $(has_param "-H --help" "$@") ]]; then
    echo ""
    echo "Containers Stacks to Stop. Select at least one stack to be Stoped."
    echo "  -C, --core               Core Services. "
    echo "  -E, --essential          Essential Services. "
    echo "  -G, --general            General Services. "
    echo "  -N, --non_essential      Non Essential Services. "
    echo "  -O, --other              Other Services. "
    echo "  -A, --all                All Services Above. "
    echo ""

fi

if [[ -z $(has_param "-C --core -E --essential -G --general -N --non_essential -O --other -A --all -H --help" "$@") ]]; then
    echo ""
    echo "No Flag detected for selecting Stack. Select at least one stack to be Stoped."
    echo "  -H, --help               For help with Stack Flags. "
    echo ""
fi