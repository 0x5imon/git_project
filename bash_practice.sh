#! /bin/bash

#Echo command
echo Hello WOrld!! dafafq + jo32ojgf

#Variables - uppercase by convention
#Letters, numbers, underscores

NAME="BRAD"
echo my name is $NAME

#Just added this

#New change on line 14

#User input
#read -p "enter your name: " YOUR_NAME
#echo hello ${YOUR_NAME} , nice to meet you

#Simple IF statementsdd

if [ $NAME == "BRAD" ]
then
  echo "your name is BRAD"
elif [ $NAME == 'JON' ] 
then
  echo "your name is JON"
else
  echo "your name is not BRAD or JON"
fi


#Comparison
# -eq (equal)
# -ne (not equal)
# -gt (greater than)
# -ge (greater than or equal to)
# -lt (less than)
# -le (less than or equal to)

NUM1=3
NUM2=22
if [ $NUM1 -gt "$NUM2" ]
then
  echo "NUM1 is greater than NUM2"
else
  echo "NUM1 is less than NUM2"
fi

#File conditions
FILE="new_bash_file.sh"
if [ -d "$FILE" ]
then
  echo "$FILE exists"
else
  echo "$FILE does not exist"
fi

# -d file True if file is a directory
# -e file true if file exists (-f is more popular usage)
# -f file True if provided string is a file
# -g file true if group id is set on a file
# -r file true if file is readable
# -s file true if file has non-zero size
# -u true if user id is set on a file
# -w true if file is writable
# -x true if file is executable


#CASE STATEMENT

# read -p "Are you 21 or over? Y/N " ANSWER
# case "$ANSWER" in
#   [yY] | [yY][eE][sS])
#     echo "you can have a beer"
#     ;;
#   [nN] | [nN][oO])
#     echo "sorry, no drinking"
#     ;;
#   *)
#     echo "Please enter y/yes or n/no"
#     ;;
#   esac


#SIMPLE FOR LOOP
NAMES="Brad Kevin Alice Mark"
for NAME in $NAMES
  do 
    echo "hello $NAME"
done


#FOR loop to rename files
# FILES=$(ls *.txt)
# NEW="new"
# for FILE in $FILES
#   do
#     echo "Renaming $FILE to $NEW-$FILE"
#     mv $FILE $NEW-$FILE
# done

#WHILE LOOP - read through text file line by line

LINE=1
while read -r CURRENT_LINE
  do
    echo "$LINE: $CURRENT_LINE"
    ((LINE++))
done < "./new_file.txt"

#FUNCTION
function sayHELLO() {
  echo "Hello World"
}

sayHELLO

#FUNCTION with paramas

function greet() {
  echo "Hello, I am ${1} and I am ${2}"
}

greet "Brad" "36" "fat"


#Create folder and write to a file
# mkdir hello
# touch "hello/world.txt"
# echo "Hello World" >> "hello/world.txt"
# echo "Created hello/world.txt"

#Upper/Lower

rootPath="/etc"
filePath="/new_folder"
name="larry"
cPath=${rootPath}${filePath}
echo ${cPath}
echo ${name^^}