#!/usr/bin/bash
pokemon=$1

if [[ -z "$pokemon" ]]; then
    echo "No parameter passed"
    exit 22
elif  wget --spider https://pokeapi.co/api/v2/pokemon/${pokemon} 2>/dev/null; then
    curl https://pokeapi.co/api/v2/pokemon/${pokemon} | jq '{id: .id, name: .name, height: .height, weight: .weight, order: .order}'
else
    echo "Such pokemon doesn't exists"
    exit 22
fi

