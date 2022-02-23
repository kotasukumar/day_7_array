#Program to get zero by adding 3 integer

size=6
num=( 3 4 5 -1 -2 -3 )

	for (( i = 0; i < $size-2; i++ ))
	do
   		for (( j = $i+1; j < $size-1; j++ ))
   		do

     			for (( k = $j+1; k < $size; k++ ))
     			do

        			sum=$(( $(( ${num[i]} + ${num[j]} )) + ${num[k]} ))

        				if (( $sum == 0 ))
        				then
        					echo "Elements:" ${num[i]},${num[j]},${num[k]}
        					echo "Sum of three element = $sum"
        				fi

     			done

   		done

	done
