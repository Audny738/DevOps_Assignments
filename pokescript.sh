#!/usr/bin/bash
pokemon=$1

if [[ -z "$pokemon" ]]; then
    echo "No parameter passed"
    exit 22
else
    curl https://pokeapi.co/api/v2/pokemon/${pokemon} | jq '{id: .id, name: .name, height: .height, weight: .weight, order: .order}'

fi

# if [[ -e https://pokeapi.co/api/v2/pokemon/${pokemon} ]]; then
#     curl https://pokeapi.co/api/v2/pokemon/${pokemon} | jq '{id: .id, name: .name, height: .height, weight: .weight, order: .order}'
# else
#     echo "No exist such pokemon"
#     exit 22
# fi
# #echo $pokemon
#curl https://pokeapi.co/api/v2/pokemon/${pokemon} | jq '{id: .id, name: .name, height: .height, weight: .weight, order: .order}'


