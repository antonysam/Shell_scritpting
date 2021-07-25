# And

# Syntax
```
if <"condition 1"> && <"condition 2">
```

# Sample script using `&&`
```
echo -e "Enter a valid age: \c"
read age
if [ "$age" -gt 18 ] && [ "$age" -lt 30 ]
then
  echo "valid age"
  else
  echo "age not valid"
fi 
```
# Sample script using `-a`
```
echo -e "Enter a valid age: \c"
read age
if [ "$age" -gt 18 -a "$age" -lt 30 ]
then
  echo "valid age"
  else
  echo "age not valid"
fi 

