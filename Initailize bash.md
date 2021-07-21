# Shell script 

Shell files are initialized with `#! <"location of bash">`

This tells the interpreter that it is a bash shell script

# Comment

`#` ->represents comment

--------
# Variables

_Types_
1. User Defined (starts with `$` and characters)
2. System variables (starts with `$` and fully with upper case letters)

Note : `echo` prints the given line

e.g for System variables
```
echo $BASH # Bash location

echo $BASH_VERSION # bash version
echo $HOME # Home dir
echo $PWD  # Present working directory
```
e.g for User defined variables
```
usr_name = sam
echo The name is $usr_name
```

