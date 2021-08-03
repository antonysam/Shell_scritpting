# Syntax
```
while [ condition ]
do 
  command1
  command2
done
```
# While with comparision flag
```
num =1
while [ $num -le 10 ]
do 
  echo "$num"
  (( ++num ))
  
done
```

# While with relational operator
```
num=1
while (( $num <= 10 ))
do 
   echo "$num"
   #num=$(( num+1 ))
   (( num++ ))
done

```
