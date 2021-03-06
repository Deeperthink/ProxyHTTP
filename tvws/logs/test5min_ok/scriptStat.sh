#!/bin/bash

MINROWS=$1

for dir in "tvws" "lte" "caba_r" "caba";
do

	cd $dir
	echo $dir

	for i in `ls test*`; 
	do 
		row=$(wc -l < $i); 
		if [ "$row" -gt "$MINROWS" ]; then 
			cat $i | awk 'BEGIN{C=0;S=0}{S+=$2;C+=1}END{print S/C}'; 
		fi 
	done | awk 'BEGIN{S=0;C=0}{S+=$1;C+=1}END{printf("%d\n", S/C)}'

	for i in `ls test*`; 
	do 
		row=$(wc -l < $i); 
		if [ "$row" -gt "$MINROWS" ]; then 
			bps=$(cat $i | awk 'BEGIN{C=0;S=0}{S+=$2;C+=1}END{printf("%d\n", S/C)}'); 
			ris=$(($row * $bps))
			echo $ris
		fi
	done | awk 'BEGIN{S=0;C=0}{S+=$1;C+=1}END{printf("%d\n", S/C)}'

	cd ..
done
