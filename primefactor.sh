#program to do factoial of given number using prime factorial method
read -p "enter number: " n
        while(($n%2==0))
        do
                a[$i]=2
                n=$n/2
                ((i++))
        done
                for((i=3;i<=n;i++))
                do
                        while(($n%$i==0))
                        do
                                b[$k]=$i
                                n=$n/$i
                                ((k++))
                        done
                done
        if(($n>2))
        then
        c[0]=$n
        fi
echo ${a[@]} ${b[@]} ${c[@]}
