#!/bin/bash


ask_for_guess() {
  echo "Guess how many files are in the current directory:"
  read guess
}


file_count=$(find . -type f | wc -l)


echo "Welcome to the guessing game!"


while true; do
  ask_for_guess
  
 
  if [ "$guess" -eq "$file_count" ]; then
    echo "Congratulations! Your guess is correct!"
    break
  elif [ "$guess" -lt "$file_count" ]; then
    echo "Your guess is too low! Try again."
  else
    echo "Your guess is too high! Try again."
  fi
done

