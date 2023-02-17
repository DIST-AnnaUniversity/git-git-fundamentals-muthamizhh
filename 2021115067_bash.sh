#1
echo "#1 Hello world"
echo "Hello world"

#2 echo
echo -e "\n#2 Echo"
echo "Hi"
echo -n "This is cheran"
echo -e "I \t am \t a student"

#3 - Single line comments

#4 - Multi line comments
: ' Multi
line 
comments '

#5 While loop
echo -e "\n#5 While loop"
valid=true
count=1
while [ $valid ]
do
echo $count
if [ $count -eq 5 ];
then
break
fi
((count++))
done

#6 For loop
echo -e "\n#6 For loop"
for (( counter=10; counter<21; counter++ ))
do
echo -n "$counter "
done
printf "\n"

#7 Input
echo -e "\n#7 Input"
echo "Enter name:"
read name
echo "HI $name"

#8 if
echo -e "\n#8 if"
echo "Enter a number:"
read num
if [ $num -eq 5 ];
then
echo "It is equal to 5"
else
echo "Not equal to 5"
fi

#9 if with and
echo -e "\n#9 if with and"
echo "Enter a number:"
read n
if [[ $n -gt 0 && $n -lt 10 ]];
then
echo "It is a positive num and single digit"
else
echo "Not a positive single digit"
fi 

#10 if with or
echo -e"\n#10 if with or"
echo "Enter a number:"
read n
if [[ $n -eq 5 || $n -eq 10 ]];
then
echo "You won"
else
echo "You lost"
fi 

#11 else if
echo -e "\n#11 else if"
echo "Enter n1:"
read n1
echo "Enter n2:"
read n2
if [ $n1 -gt $n2 ];
then 
echo "n1 > n2"
elif [ $n1 -lt $n2 ];
then
echo "n1 < n2"
else
echo "n1 == n2"
fi 

#12 case
echo "Enter num:"
read n
case $n in
100) 
echo "It is 100";;
200)
echo "It is 200";;
esac

#13 arguments from comments

#14with names
for arg in "$@"
do
index=$(echo $arg | cut -f1 -d=)
val=$(echo $arg | cut -f2 -d=)
case $index in
X) x=$val;;

Y) y=$val;;

*)
esac
done
((result=x+y))
echo "X+Y=$result"

#15 Combine strings
s1="cheran"
s2="priya"
echo "$s1$s2"
s3=$s1+$s2
s3+="-IT"
echo $s3

#16 Substring
s="PROGRAMMING"
sub=${s:3:8}
echo $sub

#17 Add 2 num
echo "Enter n1"
read x
echo "Enter n2"
read y
(( sum=x+y ))
echo "Addition=$sum"

#18 Create function
function f1()
{
echo "Function created"
}
f1

#19 Function with parameters
Sumof_num() {
sum=$(($1 + $2))
echo "Sum : $sum"
}
Sumof_num 10 20 

#20 Return function value
function greet()
{
s="HELLO, $name Welcome "
echo $s
}
echo "Enter your name:"
read name
val=$(greet)
echo "RETURN VALUE: $val"

#21 Make directory
echo "Enter new directory name"
read newdir
`mkdir $newdir`
echo "Directory created"

#22 Check if dir is present 
echo "Enter new directory name"
read ndir
if [ -d "$ndir" ]
then
echo "Directory exist"
else
`mkdir $ndir`
echo "Directory created"
fi

#23 Read a file
echo -e "\n#23 Read a file"
file='file1.txt'
while read line;
do 
echo $line
done < $file

#24 Delete a file
echo "Enter filename to remove"
read fn
rm -i $fn

#25 Append to a file
echo "Before:"
cat f1.txt
echo "60">>f1.txt
echo "After:"
cat f1.txt

#26 Check file
filename=f1.txt
if [ -f "$filename" ]; then
echo "File exists"
else
echo "File does not exist"
fi

#27 Send mail
Recipient="admin@abc.com"
Subject="Hello"
Message="Welcome"
`mail -s $Subject $Recipient <<< $Message`

#28 Current date,Time
Year=`date +%Y`
Month=`date +%m`
Day=`date +%d`
Hour=`date +%H`
Minute=`date +%M`
Second=`date +%S`
echo `date`
echo "Current Date - $Day-$Month-$Year"
echo "Current Time - $Hour:$Minute:$Second"

#29 Wait
echo "Wait command" &
process_id=$!
wait $process_id
echo "Exited with status $?"

#30 Sleep

echo "Wait for 5 seconds"
sleep 5
echo "Completed"
