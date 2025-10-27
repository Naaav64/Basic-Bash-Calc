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

		case $choice in
            1)
                sum=$(( number1 + number2 ))
                echo "The Answer is $sum"
                ;;
            2)
                sum=$(( number1 - number2 ))
                echo "The Answer is $sum"
                ;;
            3)
                sum=$(( number1 * number2 ))
                echo "The Answer is $sum"
                ;;
            4)
                sum=$(echo "scale=10; $number1 / $number2" | bc -l)
                echo "The Answer is $sum"
                ;;
            5)
                echo -e "\nGoodbye!\n"
                break
                ;;
            *)
                echo "Please choose from the menu options: "
                ;;
        esac
    
		echo -e "\nGoodbye!\n"
                break
        else
                continue
        fi
done
