# When i's value exceeds more than 5 the loop breaks
```
for (( i=1 ; i<=10 ; i++ ))
do
  if [ $i -gt 5 ] 
  then
   break
  fi
  echo "$i"
done
```

# When i's value is equal to 3 or 6 the loop will not print 3 or 6 in the console 
```
for (( i=1 ; i<=10 ; i++ ))
do
  if [ $i -eq 3 -o $i -eq 6 ]
  then
    continue
  fi 
  echo "$i"
done
```

