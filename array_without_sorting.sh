#program to read 10 random numbers and finding 2nd largest and smallest without sorting
for((i=0;i<10;i++))
do
	num=$((RANDOM%899 +100))
	number[$i]=$num
done
	echo "numbers in array is" ${number[@]}

#finding largest and smallest number
min=${number[0]}
max=${number[9]}
	for((i=0;i<10;i++))
	do
		if((${number[i]}<$min))
		then
			min=${number[i]}
			smallest_index=$i
		fi
	done
        for((i=0;i<10;i++))
        do
                if((${number[i]}>$max))
                then
                        max=${number[i]}
			largest_index=$i
                fi
        done
echo "smallest number is: " $min
echo "largest number is:" $max
unset number[$smallest_index]
unset number[$largest_index]
echo ${number[@]}
min=${number[0]}
max=${number[9]}
        for((i=0;i<10;i++))
        do
                if((${number[i]}<$min && $i!=$smallest_index))
                then
                        min=${number[i]}
                fi
        done
        for((i=0;i<10;i++))
        do
                if((${number[i]}>$max && $i!=$largest_index))
                then
                        max=${number[i]}
                fi
        done
echo "2nd smallest number is: " $min
echo "2nd largest number is:" $max
