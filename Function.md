# Syntax
```
function <"function name">(){
 Commands
}

or 

<"function name">(){
  Commands
}
```

# Passing the argument 
```
print(){
 echo $1 $2 $3
}

print sam 
```
# Passing the argument through varaibles
```
function print(){
  name=$1
  echo "The name is $name"
}
```
# Local varaibles

# Local variables cannot be accessed outside the function
```
function print(){
  local name=$1
  echo "The name is $name"
}

name="Dany"
echo "The name is $name : Before"

print sam

echo "The name is $name : After"
```
