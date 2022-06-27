#!/bin/bash

PSQL="psql --username=freecodecamp --dbname=number_guess -t --no-align -c"

echo "Enter your username:"
read USERNAME

usr_exst=$($PSQL "select username from users where username='$USERNAME'")
g_played=$($PSQL "select count(*) from users inner join games using(user_id) where username='$USERNAME'")
b_game=$($PSQL "select min(number_guesses) from users inner join games using(user_id) where username='$USERNAME'") 

if [[ -z $usr_exst ]]
then
  insert_usr=$($PSQL "insert into users(username) values('$USERNAME')")
  echo "Welcome, $USERNAME! It looks like this is your first time here."
else
  echo "Welcome back, $USERNAME! You have played $g_played games, and your best game took $b_game guesses."
fi

r_numb=$((1+$RANDOM%1000))
tries=1

echo "Guess the secret number between 1 and 1000:"

while read g_numb
do
  if [[ ! $g_numb =~ ^[0-9]+$ ]]
  then
    echo "That is not an integer, guess again:"
  else
    if [[ $g_numb -eq $r_numb ]]
    then
      break;
    else

      if [[ $g_numb -lt $r_numb ]]
      then
        echo "It's higher than that, guess again:"

      elif [[ $g_numb -gt $r_numb ]] 
      then
        echo -n "It's lower than that, guess again:"
      fi
    fi
  fi
  tries=$(( $tries+1))
done

echo "You guessed it in $tries tries. The secret number was $r_numb. Nice job!"

usr_id=$($PSQL "select user_id from users where username='$USERNAME'")
insert_game=$($PSQL "insert into games(number_guesses, user_id ) values($tries, $usr_id)")


