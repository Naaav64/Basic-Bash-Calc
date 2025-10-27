number1=$1
number2=$2
while true
do
        if [ -z "$number1" ] && [ -z "$number2" ];then
                read -p "Select Two Numbers: " A B
                number1=$A
                number2=$B
        elif [ -z "$number1" ];then
                read -p "Select The First Number: " A
                number1=$A
        elif [ -z "$number2" ];then
                read -p "Select The Second Number: " B
                number2=$B
        fi
        echo "1. Add"
        echo "2. Subtract"
        echo "3. Multiply"
        echo "4. Divide"
        echo -e "5. Quit\n"
        read -p "Choose your operator: " choice
        if [ $choice -eq 1 ];then
                sum=$(( number1 + number2 ))
                echo -e "The Answer is $sum\n"
        elif [ $choice -eq 2 ];then
                sum=$(( number1 - number2 ))
                echo -e "The Answer is $sum\n"
        elif [ $choice -eq 3 ];then
                sum=$(( number1 * number2 ))
                echo -e "The Answer is $sum\n"
        elif [ $choice -eq 4 ];then
                sum=$(echo "scale=3; $number1 / $number2" | bc -l)
                echo -e "The Answer is $sum\n"
        elif [ $choice -eq 5 ];then
		echo -e "\nGoodbye!\n"
                break
        else
                continue
        fi
done
