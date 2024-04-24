#!/bin/bash

PSQL="psql --username=freecodecamp --dbname=number_guess -t --no-align --tuples-only -c"

echo "Enter your username:"
read USERNAME
# test =$($PSQL "")
# check if new user
CHECK_USER=$($PSQL "SELECT username FROM game_history WHERE username = '$USERNAME'")
GAMES_PLAYED=$($PSQL "SELECT COUNT(*) FROM game_history WHERE username = '$USERNAME'")
BEST_GAME=$($PSQL "SELECT MIN(number_of_guesses) FROM game_history WHERE username = '$USERNAME'")
  
  if [[ ! -z $CHECK_USER ]]
  then
    # if existing user, get records then print
    echo "Welcome back, $USERNAME! You have played $GAMES_PLAYED games, and your best game took $BEST_GAME guesses."
  else
    # if new user:
    echo "Welcome, $USERNAME! It looks like this is your first time here."
  fi 

# - - - - Start game
# generate random number between 1 and 1000
RANDOM_NUM=$((1 + RANDOM % 1000))
echo "Guess the secret number between 1 and 1000: ($RANDOM_NUM)"
read GUESS
# Initialize number of guesses
GUESSES_NUM=0
while true; do
  ((GUESSES_NUM++))

  # invalid input
  if ! [[ $GUESS =~ ^[0-9]+$ ]]; then
    echo "That is not an integer, guess again:"
    read GUESS
    continue
  fi

  # Check if the guess is equal to the random number
  if [[ $GUESS -eq $RANDOM_NUM ]]; then
    echo "You guessed it in $GUESSES_NUM tries. The secret number was $RANDOM_NUM. Nice job!"
    RECORD=$($PSQL "INSERT INTO game_history(username,number_of_guesses) VALUES('$USERNAME',$GUESSES_NUM)")
    break
  elif [[ $GUESS -gt $RANDOM_NUM ]]; then
    echo "It's lower than that, guess again:"
    read GUESS
  else
    echo "It's higher than that, guess again:"
    read GUESS
  fi
done