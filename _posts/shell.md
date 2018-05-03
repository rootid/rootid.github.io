

printing the nth line


Eg. print 20th line

awk 'FNR == 20 {print }'  file.txt

awk 'NR == 20' file.txt

sed -n 20p file.txt


head -1 equivalent


awk '
{
    for (i = 1; i <= NF; i++) {
        if(NR == 1) {
            s[i] = $i;
        }
    }
}

END {
    for (i = 1; i <= NF ; i++) {
        print s[i];
    }

}' file.txt


AWK validate the phone number

eg. 
987-123-4567
(123) 456-7890
awk '/^([0-9]{3}-|\([0-9]{3}\) )[0-9]{3}-[0-9]{4}$/' file.txt


### count # of words in the file



tr -s ' ' '\n' < words.txt|sort | uniq -c |sort -nr |awk '{print $2, $1}'

