
read -p "Enter a number" n

i=1
res=1

for(( i=1; i<=$n; i++ ))
do
     	res=$res+1/$i;
	echo $res;
done


	
