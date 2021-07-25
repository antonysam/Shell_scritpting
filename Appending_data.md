# Appending data using nested if else

Tasks performed by the below script

1. initially will check the filename 

2. check wheather it has wite permission

3. if it has write permission then can append data 

# Sample code 
```
echo -e "Enter the filename: \c"
read filename

if [ -f $filename ]
then 
 echo "$Filename file exist"
 if [ -w $filename ]
 then  
  echo "Type some data. To quit press ctrl+d"
  cat >> $filename
  else
   echo "$filename doest not exist with write permission"
  fi
 else
  echo "$filename does not exist"
  fi 
```
