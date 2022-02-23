#program to display palindrom numbers upto 100

for((i=10;i<100;i++))
do
	num=$i
        rev=0
        original_num=$i

        while(( $num != 0 ))
        do
                 rem=$(( $num%10 ))
                 rev=$(( $rev*10 + $rem ))
                 num=$(( $num /10))
        done

        if(( $original_num == $rev ))
        then
		number[$i]=$i
        fi
done
echo ${number[@]}
