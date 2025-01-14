#!/usr/bin/env bash
# File: guessinggame.sh

# Function to get the count of files in the current directory
function get_file_count {
  ls -1 | wc -l
}

echo "Welcome to the Guessing Game!"
echo "Can you guess how many files are in the current directory?"

correct_count=$(get_file_count)
user_guess=-1

while [[ $user_guess -ne $correct_count ]]
do
  read -p "Enter your guess: " user_guess
  
  # Check if user input is a valid number
  if [[ $user_guess =~ ^[0-9]+$ ]]; then
    if [[ $user_guess -lt $correct_count ]]; then
      echo "Your guess is too low. Try again!"
    elif [[ $user_guess -gt $correct_count ]]; then
      echo "Your guess is too high. Try again!"
    else
      echo "Congratulations! You guessed it right."
    fi
  else
    echo "Please enter a valid number."
    user_guess=-1
  fi
done

echo "Thanks for playing!"
