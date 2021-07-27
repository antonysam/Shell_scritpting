# Arithmetic operations using floating points

echo -e "Enter two decimal numbers: \c"
read num1 num2

echo "$num1 + $num2" | bc
echo "$num1 - $num2" | bc

# Displays the numbers after the decimal point using scale
echo "scale=5; $num1/$num2" | bc

# Square root calculation -l for calling the math library
echo "sqrt($num1)" | bc -l

# Cubing a number
echo "$num^3" | bc -l
