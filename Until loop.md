# Until Loop syntax
```
until [ condition ]
do
  command1
  command2
  ...
  ....
  commandN
done
```

# print the n numbers using until loop
```
echo -e " enter the number not greater than 10 :\c "
read no
until [ $no -ge 10 ]
do
  echo $no
  #no=$(( no+1 ))
  (( ++no ))
done
```
