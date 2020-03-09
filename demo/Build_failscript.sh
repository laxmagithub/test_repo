curl "http://release-server.ecp-cloud-dev.com/windows/?C=N;O=D" > sample.txt

VAR_1=$(cat sample.txt | cut -d " "  -f 8 |  awk -F 'Setup%20' '{print $2}' | awk -F '.exe' '{print $1}' | sed '/^[[:space:]]*$/d' | head -1)

echo VAR_1 value is $VAR_1
VAR_2=$( cat laxma.txt)
echo VAR_2 value is $VAR_2

if [ "$VAR_1" == "$VAR_2" ]
then

echo "Strings are  equal."
exit 0

else
echo "Strings are not equal."
exit 0
fi

