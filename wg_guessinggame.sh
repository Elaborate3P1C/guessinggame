# This is the final project for the Coursera course, "The Unix Workbench." All code within this script, along with
# any information regarding the script is completely my own. NO PERMISSION is granted to modify, copy, or otherwise
# alter this code, unless explicitly stated. Further information about this script can be found in the README.md file
# on the main page. Formerly in progress. Now in the process of being updated.

#variables to be initalized
answer=`ls -l | wc -l`
guess=0

#function for counting user guesses

function count {

while [[ $guessres -ne $answer ]]
do
count=`expr $count + 1`
guess=$count
echo "You now have $guess guesses."
break
done

}

#actual guessing game

while [[ $guessres -ne $answer ]]
do
  echo "How many files are in your current directory? Please enter a number: "
  read guessres
if [[ $guessres -lt $answer ]]
then
  echo "A little higher, please."
  count
  echo "Try again!"
elif [[ $guessres -gt $answer ]]
then
  echo "A little lower, please."
  count
  echo "Try again!"
else [[ $guessres -eq $answer ]]
  echo "You won! It took you $guess attempts."
  echo "Thanks for playing!"
fi
done
