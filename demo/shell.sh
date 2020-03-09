#!/bin/bash
for table in {2..20..2}
do
	echo "table for 2: $table"
done

sleep 5

# reverse order
for (( i =10; i >= 1; i-- ))
do
	echo "$i"
done

sleep 3

# nuber should reverse using while condition
j=10;
while [ $j -ge 0 ]
do
	echo "reverser order number $j"
	let j--;
done
sleep 5


# until condiction
k=5
until [ $k -gt 15 ]
do
	echo "num $k"
	k=$(( k+1 ))
done


# case statement

echo "enter the name of the state"
read state
case $state in
	"Ap")
		echo "capital is amaravathi"
		;;
	"Hyderabad")
		echo "capital is Talangana"
		;;
	*)
		echo "you discovred an unkonw state"
		;;

	esac



# case 2 example

echo “Select your choice:”
echo “Press 1 to display your current directory”
echo “Press 2 to display the current date and time”
echo “Press 3 to list the content of the current directory”
read CHOICE
case $CHOICE in
1) pwd;;
2) date;;
3) ls -l;;
*) echo Invalid selection;;
esac

