# use md5 to calculate file checksum

echo $1 $2
str1=$(md5sum $1 | cut -d ' ' -f 1)
str2=$(md5sum $2 | cut -d ' ' -f 1)
echo $str1
echo $str2
if [ "$str1" != "$str2" ]; then
    echo "$1 $2 Not match!"
fi 
