#!/bin/bash

echo "Write your note"
read note

if [ $note -ge 90 ]; then
  echo "You got an A!"
elif [ $note -ge 80 ]; then
  echo "You got a B!"
elif [ $note -ge 70 ]; then
  echo "You got a C!"
else
  echo "You got a F!"
fi