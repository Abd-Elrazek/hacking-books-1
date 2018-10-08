if [ -f fileInfo.txt ]
then
	echo ''
else
	exiftool -T -filename -PageCount -s3 -FileSize -ext pdf .>fileInfo.txt;
fi;
echo "|File Name|PageCount|FileSize|"
echo "| --- | --- | --- |"
# https://raw.githubusercontent.com/hktalent/
cat fileInfo.txt|awk -F '\t' '{print "|["$1"](hacking-books/blob/master/"$1") | "$2" | "$3"|"}'
