# create array
echo "put objects in array and hit 'Enter' + 'Ctrl+D' when finished"
while read line
do
    my_array=("${my_array[@]}" $line)
done
# echo ${my_array[@]}
# If you just run it, it will keep reading from standard-input until you hit Ctrl+D (EOF)
max=${my_array[0]}
for n in "${my_array[@]}" ; do
    ((n > max)) && max=$n
done
# echo $max
####################################
################## sum #############
declare -i sum
IFS=+ sum="${my_array[*]}"
# echo $sum
####################################
################### compare max value with  sum of array #################
 if (( max > (sum - max)/2 ));
# if (( max > (sum - max) ));
then 
echo "NO"
# fi

# if (( max < sum - max ));
# then 
# echo "YES"
# fi
################################
elif (( $sum % 2 )); then
echo "NO"
# fi


else 
echo "YES"
fi
