#!/bin/bash

if light 2>&1 | grep -qs 'No backlight'; then
  echo 100
else
	echo "$(light | cut -d. -f1)"
fi


