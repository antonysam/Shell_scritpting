# Syntax
```
for ((<"initialize variable">;<"condition">;<"incrementation">))
do
   command1
   command2
   command3
done

for <"variable"> in <"list of numbers">
do
  command1
done
```
# e.g
```
for i in {1..10}
do
  echo $i
done

for i in 1 2 3
do
  echo $i
done

echo ${BASH_VERSION}
for i in {1..10..2} #{START..END..INCREMENT} #this syntax will work in version 4 and above
do
  echo $i
done

for(( i=0;i<5;i++))
do
  echo $i
done
```
# Using for loop with a scenario

# Executing the commands using the loop
```
for command in ls pwd date
do
  echo "-----------$command-------------"
  $command
done
```
# Displaying the files using for loop
```
for item in *
do 
  if [ -d $item ] # -d repersents the directory
  then
    echo $item
   fi
done 
com

for item in *
do
  if [ -f $item ] # -f represents the file
  then
    echo $item
   fi
done
```




























