#!/bin/bash

function capslock() {

  caps=$(xset -q | grep Caps | awk '{ print $4 }')

  if [ $caps == 'off' ]; then
    echo "c"
  else
    echo "C"
  fi

}

function numlock {

  caps=$(xset -q | grep Num | awk '{ print $8 }')

  if [ $caps == 'off' ]; then
    echo "n"
  else
    echo "N"
  fi

}

function scroll() {

  caps=$(xset -q | grep Scroll | awk '{ print $12 }')

  if [ $caps == 'off' ]; then
    echo "s"
  else
    echo "S"
fi

}

main () {

  if [ "$1" == "-c"  ]; then
    capslock
  fi

  if [ "$1" == "-n"  ]; then
    numlock
  fi

  if [ "$1" == "-s"  ]; then
    scroll
  fi

}

main $1