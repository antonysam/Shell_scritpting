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
read -sp 'password : ' pass_var
echo
echo "password : $pass_var"

# Taking input in array and displaying
echo "Enter names :"
read -a names
echo "Names : ${names[0]}, ${names[1]}"

# Default variable for read (REPLY)
echo "Enter the Name :"
read
echo "Welcome $REPLY"


