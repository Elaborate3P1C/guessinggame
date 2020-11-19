# This is the final project for the Coursera course, "The Unix Workbench." All code within this script, along with
# any information regarding the script is completely my own. NO PERMISSION is granted to modify, copy, or otherwise
# alter this code, unless explicitly stated. Further information about this script can be found in the README.md file
# on the main page. Currently in progress.

#variables to be initalized
answer=$(ls | wc -l)
guess=1 

#function for counting user guesses


#actual guessing game

echo "Welcome to the my guessing game! Please enter a number here:"
read guess

if [[ $guess > $answer ]] 
  echo "A little lower, please."
# increment the count of guess variable
else if [[ $guess < $answer ]]
  echo "A little higher, please."
# increment the count of guess variable
else [[ $guess =~ $answer ]]
  echo "You won! It took you $guess attempts."
  echo "Thanks for playing!"
fi
