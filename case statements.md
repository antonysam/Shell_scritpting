# case statements

echo -e "Enter a vehicle present in the list (car, van, bike): \c"
read vehicle

case $vehicle in
     "car" )
       echo "Rent of $vehicle is Rs.5000" ;;
      "van" )
      echo "Rent of $vehicle is Rs.2500" ;;
      "bike" )
      echo "Rent of $vehicle is Rs.1500" ;;
      * )
      echo "Unknown vehicle" ;;
esac
