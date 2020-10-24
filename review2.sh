echo "enter a number"
read n
if [[ $n -ge 100 && $n -le 999 ]]
then
   echo "3 digit num:$n"
else
   echo "not a 3 digit"
fi

primefact(){
for (( i=2;i<=$n*$n; i++ ))
do
    while [ $((n%i)) == 0 ]
    do
        echo "Prime factors are:$i"
        n=$((n/$i))
        primearray[$i]=$((i))
    done
done
echo "Array of prime factors: ${primearray[@]}"
}
primefact $n


checkevenodd(){
rem=$(( $n % 2 ))
 
if [ $rem -eq 0 ]
then
  echo "$n is even number:evenarr[$]=$((n))"
else
  echo "$n is odd number"
fi
}
checkevenodd $n

checkpalindrome(){
s=0
rev=""
temp=$n
while [ $n -gt 0 ]
do
    s=$(( $n % 10 ))
    n=$(( $n / 10 ))
    rev=$( echo ${rev}${s} )
done
if [ $temp -eq $rev ]
then
    echo "Number is palindrome"
else
    echo "Number is not palindrome"
fi
}
echo "CHECK FOR PALINDROME "
echo "Enter a number"
read n
checkpalindrome $n
