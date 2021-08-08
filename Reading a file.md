# While syntax
```
while [ Condition ]
do 
  command1
  command2
  ...
done
```
# Reading a file using while loop and output redirection
```
while read <"varible name">
do 
  echo $<"variable name">
done > <"file name to be read">.<"extension">
```
e.g 
```
while read p
do
  echo $p
done < readfile.sh
```

# Reading a file using cat command uaing while loop
```
cat <"filename to be read"> | while read <"variable">
do 
 echo $<"variable">
done
```
e.g
```
cat readfile.sh | while read p
do 
  echo $p
done
```

# Reading a file using IFS command uaing while loop
```
while IFS=' ' read -r <"variable">
do 
  echo $<"variable">
done < <"filename to be read">.<"extension">
```
e.g
# Read the host.conf file using IFS
```
while IFS='' read -r fline
do
  echo $fline
done < /etc/host.conf
```
