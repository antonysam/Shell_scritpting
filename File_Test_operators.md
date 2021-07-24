# File Test operators

Flags

| flag | Description |
|---|---|
| -e |  check wheather the file exist or not |
| -f |  check wheather the file exist or not and it is regular file or not |
| -d | check wheather the directory exist or not|
| -b |  check wheather the blockspecial file (i.e video,images) exist or not|
| -c |  check wheather the character specific file exist or not |
| -s |  check wheather the file is empty or not|
| -r |  check wheather the file has read permission|
| -w | check wheather the file has write permission |
| -x | check wheather the file has execute permission|

Note: In `echo` cmd `-e` and `\c` for getting the input from same line

# Sample shell script to find wheather the file exists or not
```
echo -e "Enter the file name: \c"
read filename

if [ -s $filename ]
then
echo "$filename not empty"
else 
echo "$filename empty"
fi
```
