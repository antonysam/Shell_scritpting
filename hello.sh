#! /usr/bin/bash
# this is a comment
echo "Hello World" # Prints the string

# Variables are containers
# System (predefined variables by OS)and user defined variables

echo $BASH #Gives bash shell name
echo $BASH_VERSION # bash version
echo $HOME # Home dir
echo $PWD  # Present working dir

# Taking input from the terminal
#echo "Enter name : "
#read name
#echo "Welcome : $name"

# Taking multiple input from the terminal
#echo " Enter names : "
#read name1 name2 name3
#echo "Welcome : $name1, $name2, $name3..."

# Taking input from the single line (p flag)
#read -p 'username : ' user_var
#echo "Welcome $user_var"

# making an input without visisble (s flag)
#read -sp 'password : ' pass_var
#echo
#echo "password : $pass_var"

# Taking input in array and displaying
#echo "Enter names :"
#read -a names
#echo "Names : ${names[0]}, ${names[1]}"

# Default variable for read (REPLY)
#echo "Enter the Name :"
#read
#echo "Welcome $REPLY"

# Pass arguments to a shell script
#echo $0 $1 $2 

# Pass arguments using array
#args=("$@") #converts arguments to array
#echo ${args[0]} ${args[1]} ${args[2]}
#echo $@

# Pass no of arguments in the shell
#echo $#

# IF Then 
count=10
if [ $count == 10 ] 
then
  echo "condition is true"
else
  echo "condition is false"
  
  fi #represents the end of statement
  
 # File Test operators
 # Shell script to find the wheather the file exists
echo -e "Enter the file name: \c"
read filename

if [ -s $filename ]
then
echo "$filename not empty"
else 
echo "$filename empty"
fi

# -e flag is for check wheather the file exist or not
# -f flag is for check wheather the file exist or not and it is regular file or not
# -d flag is for checking wheather the directory exist or not
# -b flag is for checking wheather the blockspecial (i.e video,images) exist or not
# -c flag is for checking wheather the character specific exist or not  
# -s flag is for checking wheather the file is empty or not 
# for checking permissions -r,-w,-x -> read, write, execute respectively
