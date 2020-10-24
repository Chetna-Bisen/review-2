#!/bin/bash
echo "enter a number"
read n

if [[ $n -ge 100 && $n -le 999 ]]
then
   echo "3 digit num:$n"
else
   echo "not a 3 digit"
fi

declare -A count=([even]=0 [odd]=0)


primefact(){
 for (( i=2;n>1; i++ ))
 do
    while [ $((n%i)) == 0 ]
    do
        n=$(($n/$i))
       primearray[i]=$(($i))
    done
done
}
primefact $n
echo "Array of prime factors: ${primearray[@]}"


checkevenodd(){

  for i in "${primearray[@]}"
  do
     if [ $((i%2)) -eq 0 ]
     then
        arreven[$i]=$((i))
        ((count[even]++))
     else
        arrodd[$i]=$((i))
        ((count[odd]++))
     fi
 done
}
checkevenodd $i
echo "Array even:${arreven[@]}"
echo "Array odd: ${arrodd[@]}"


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


echo "KEYS: ${!count[@]}"
echo "COUNT: ${count[@]}"

