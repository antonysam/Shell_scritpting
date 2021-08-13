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

# OR operation 
#if [ "$age" -eq 18 -o "$age" -eq 30 ]
# or 
echo -e "Enter a vlid age: \c"
read age
if [ "$age" -eq 18 ] || [ "$age" -eq 45 ]

then
  echo "vald age"
else
  echo "age not valid"
fi


# Arithmetic operation
echo -e "Enter two numbers: \c"
read num1 num2

echo "add: "$(( num1 + num2 ))
echo "sub: "$(( num1 - num2 ))
echo "mul: "$(( num1 * num2 ))
echo "div: "$(( num1 / num2 ))
echo "mod: "$(( num1 % num2 ))


#or 

echo -e "Enter two numbers: \c"
read num1 num2
echo "add: "$(expr $num1 + $num2 )
echo "sub: "$(expr $num1 - $num2 )
echo "mul: "$(expr $num1 \* $num2 ) # for * alone we need to use "\*"
echo "div: "$(expr $num1 / $num2 )
echo "mod: "$(expr $num1 % $num2 )


# Arithmetic operations using floating points

echo -e "Enter two decimal numbers: \c"
read num1 num2

echo "$num1 + $num2" | bc
echo "$num1 - $num2" | bc
# Displays the numbers after the decimal point
echo "scale=5; $num1/$num2" | bc

# Square root calculation -l for calling the math library
echo "sqrt($num1)" | bc -l

# Cubing a number
echo "$num^3" | bc -l


# case statements
echo -e "Enter a vehicle present in the list (car, van, bike): \c"
read vehicle

case $vehicle in
     "car" )
       echo "Rent of $vehicle is Rs.5000" ;;
      "van" )
      echo "Rent of $vehicle is Rs.2500" ;;
      "bike" )
      echo "Rent of $vehicle is Rs.1500" ;;
      * )
      echo "Unknown vehicle" ;;
esac

# case statements
# case statement with some patterns

echo -e "Enter some character: \c"
read value

case $value in
      [a-z] )
         echo "User entered $value a to z" ;;
      [A-Z] )
         echo "User entered $value A to Z" ;;
      [0-9] )
         echo "User entered $value 0 to 9" ;;
      ? )
         echo "User entered $value special character" ;;
      * )
         echo "Unknown input" ;;
esac
com

os=('ubuntu' 'windows' 'kali')

# Display the contetnt in the array
echo "${os[@]}"
# Display the first array variable
echo "${os[0]}"
# Display the indicies of the array variable
echo "${!os[@]}"
# Display the length of the array
echo "${#os[@]}"	
# Remove element from an array
unset os[2]
# considering any variable as array
name=sjdfdfdbf
echo "${name[@]}"
echo "${name[0]}"
echo "${name[1]}"

num=1
while (( $num <= 10 ))
do 
   echo "$num"
   #num=$(( num+1 ))
   (( num++ ))
done

# There are two types of terminals gnome-terminal and xterm 
num=1
while (( $num <= 10 ))
do 
   echo "$num"
   #num=$(( num+1 ))
   (( num++ ))
   gnome-terminal &
done


num=1
while (( $num <= 10 ))
do 
   echo "$num"
   #num=$(( num+1 ))
   (( num++ ))
   xterm &
done

# while with comparision flag
num =1
while [ $num -le 10 ]
do 
  echo "$num"
  (( ++num ))
  
done

# reading a file using while loop using output redirection
while read p
do
  echo $p
done < readfile.sh

# reading the file in the single variable
cat readfile.sh | while read p
do 
  echo $p
done

# IFS -> Internal Field Seperator
# Prevents the backslash or esc interpretation
while IFS= read -r line
do 
  echo $line
done < readfile.sh 

# Read the host.conf file using IFS
while IFS='' read -r fline
do
  echo $fline
done < /etc/host.conf

# until loops
# syntax
<< com
until [ condition ]
do
  command1
  command2
  ...
  ....
  commandN
done
com

# print the n numbers using until loop
echo -e " enter the number not greater than 10 :\c "
read no
until [ $no -ge 10 ]
do
  echo $no
  #no=$(( no+1 ))
  (( ++no ))
done

<< com
for ((<"initialize variable">;<"condition">;<"incrementation">))
do
   command1
   command2
   command3
done
com

<<com	
for i in 1 2 3
do
  echo $i
done
com

<<com
for i in {1..10}
do
  echo $i
done
com

<<com
echo ${BASH_VERSION}
for i in {1..10..2} #{START..END..INCREMENT} #this syntax will work in version 4 and above
do
  echo $i
done
com

<<com
for(( i=0;i<5;i++))
do
  echo $i
done
com

<<com
# Using for loop with a scenario
# Executing the commands using the loop
for command in ls pwd date
do
  echo "-----------$command-------------"
  $command
done
com

# Displaying the files using for loop
<<com
for item in *
do 
  if [ -d $item ]
  then
    echo $item
   fi
done 
com

<<com
for item in *
do
  if [ -f $item ]
  then
    echo $item
   fi
done
com

<<com
select name in list
do
  command1
  command2
  ....
  ......
  CommandN
done
com

<<com
# Displays the list in the numbered format

select name in Sam Dany Rajan
do
  echo "$name selected"
done
com

<<com
# Using cases in the select loop

select name in Sam Dany Rajan
do 
  case $name in
  Sam)
   echo Sam selected;;
  Dany)
   echo Dany selected;;
  Rajan)
   echo Rajan selected;;
  *)
   echo "Error please provide the no between 1..3"
  esac
done
com

<<com
# When i's value exceeds more than 5 the loop breaks
for (( i=1 ; i<=10 ; i++ ))
do
  if [ $i -gt 5 ] 
  then
   break
  fi
  echo "$i"
done
com

# When i's value is equal to 3 or 6 the loop will not print 3 or 6 in the console 
for (( i=1 ; i<=10 ; i++ ))
do
  if [ $i -eq 3 -o $i -eq 6 ]
  then
    continue
  fi 
  echo "$i"
done
