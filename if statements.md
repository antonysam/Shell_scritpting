#  if statement

Comparision operators

Integer 

| operator | Description | 
|---|---|
|-eq | equal to | 
|-ne | not equal to | 
|-gt| greater than |
|-ge | greater than or equal to|
|-lt | less than |
|-le |less than or equal|
| < | less than | if (("$a" < "$b"))
| <= | less than or equal | if (("$a" <="$b"))
| > | greater than | if (("$a" > "$b"))
| >= | greater than or equal | if (("$a" >= "$b"))

String 

Note: `=` or `==` both has the same functionality

| operator | Description | 
|---|---|
| = | equal to |
| == | equal to |
| != | not equal |
| < | less than in ASCII alphabetical order| if [["$a" < "$b"]]
| > | greater than in ASCII alphabetical order | if [["$a" > "$b"]]
| -z | string is null, 0 length|

--------
if 
# Syntax
```
if [ <" condition "> ]
then
   <"statement">
fi
```
-----

if else
# Syntax
```
if [ <" condition "> ]
then
   <"statement">
else
   <"statement">
fi
```
--------

else if 
# Syntax
```
if [ <" condition "> ]
then
   <"statement">
else if
   <"statement">
else
   <"statement">
fi
```

