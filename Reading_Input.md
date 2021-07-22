#  Taking input from the terminal

`read` keyword can be used

# Cmd
```
echo "Enter name : "
read name
echo "Welcome : $name"
```
-------------
# Taking multiple input from the terminal

# Cmd 
```
echo " Enter names : "
read name1 name2 name3
echo "Welcome : $name1, $name2, $name3..."
```
--------------
# Taking input from the single line (p flag)

# Cmd 
```
read -p 'username : ' user_var
echo "Welcome $user_var"
```
--------------
# Making an input without visisble (s flag)

# Cmd
```
read -sp 'password : ' pass_var
echo
echo "password : $pass_var"
```
--------------
# Taking input in the array format (a flag)

# Cmd
```
echo "Enter names :"
read -a names
echo "Names : ${names[0]}, ${names[1]}"
```
---------------
# Default variable for read (REPLY)
```
echo "Enter the Name :"
read
echo "Welcome $REPLY"
```
-----------


