# Arithmetic operations

# Syntax
```
echo -e "Enter two numbers: \c"
read num1 num2

echo "add: "$(( num1 + num2 ))
echo "sub: "$(( num1 - num2 ))
echo "mul: "$(( num1 * num2 ))
echo "div: "$(( num1 / num2 ))
echo "mod: "$(( num1 % num2 ))
```
or 

# Syntax 
```
echo -e "Enter two numbers: \c"
read num1 num2
echo "add: "$(expr $num1 + $num2 )
echo "sub: "$(expr $num1 - $num2 )
echo "mul: "$(expr $num1 \* $num2 ) # for * alone we need to use "\*"
echo "div: "$(expr $num1 / $num2 )
echo "mod: "$(expr $num1 % $num2 )
```
