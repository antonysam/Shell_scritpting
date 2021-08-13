# Select Loop 

# Syntax
```
select name in list
do
  command1
  command2
  ....
  ......
  CommandN
done
```

# Displays the list in the numbered format
```
select name in Sam Dany Rajan
do
  echo "$name selected"
done
com
```

# Using cases in the select loop
```
select name in Sam Dany Rajan
do 
  case $name in
  Sam)
   echo Sam selected;;
  Dany)
   echo Dany selected;;
  Rajan)
   echo Rajan selected;;
  *)
   echo "Error please provide the no between 1..3"
  esac
done
```



