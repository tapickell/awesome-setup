#!/usr/bin/env zsh

curl --request GET \
    --url https://freegeoip.app/json/ \
    --header 'accept: application/json' \
    --header 'content-type: application/json' \
    | jq -r '{latitude, longitude} | to_entries[] | "\(.key | .[:3])=\(.value)"' > ~/.config/redshift/redshift.conf
