#program to read 10 random 3 digit number and finding 2nd largest and smallest number by sorting
for((i=0;i<10;i++))
do
	num=$((RANDOM%899 +100))
	number[$i]=$num
done
echo "before sorting; " ${number[@]}
	for((i=0;i<10;i++))
	do
		for((j=i+1;j<10;j++))
		do
			if((${number[i]}<${number[j]}))
			then
				temp=${number[i]}
				number[$i]=${number[j]}
				number[$j]=$temp
			fi
		done
	done
echo "after sorting: " ${number[@]}
echo "secound largest number is: " ${number[1]}
echo "secound smallest number is: " ${number[8]}
