# Script
```
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

# Considering any variable as array
name=sjdfdfdbf
echo "${name[@]}"
echo "${name[0]}"
echo "${name[1]}

```
