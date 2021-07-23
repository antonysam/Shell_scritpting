# Pass arguments to the shell
```
echo $0 $1 $2 
```
Note: for $0, it will directly take the filename in default 
      but if we provide the third argument it will display the third argument

_Before executing_
```
./<"shell filename.sh"> <"argument1"> <"argument2">
```
------------
# Pass argument using array
```
args=("$@") #converts arguments to array
echo ${args[0]} ${args[1]} ${args[2]}
echo $@
```
# To get the count of the arguments
```
echo $#
```
