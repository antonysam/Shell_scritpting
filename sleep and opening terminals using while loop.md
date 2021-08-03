# While loop with sleep 
```
num=1
while (( $num <= 10 ))
do
  echo "$num"
  ((num++))
  sleep 1
done
```
# Opening the terminals using while loop
There are two types of terminals gnome-terminal and xterm 
```
num=1
while (( $num <= 10 ))
do 
   echo "$num"
   #num=$(( num+1 ))
   (( num++ ))
   gnome-terminal &
done

# or

num=1
while (( $num <= 10 ))
do 
   echo "$num"
   #num=$(( num+1 ))
   (( num++ ))
   xterm &
done
```
