#!/usr/bin/env zsh

function run {
  if ! pgrep -f $1 ;
  then
    $@&
  fi
}

run setxkbmap -option caps:ctrl_modifier
run redshift
